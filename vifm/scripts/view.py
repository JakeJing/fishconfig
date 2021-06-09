#!/usr/bin/env python3.7
# coding: utf-8

# Note: python3.9 is not well-supported.

import datetime
import os
import re
import subprocess
import sys
from multiprocessing import Pool
from functools import partial


def thumb_with_ffmpeg(infile = "Model.mp4", outfile = "out", position=0.5):
    """
    Extract a thumbnail using ffmpeg
    :param infile: File to thumbnail.
    :param position: Position at which to take the thumbnail. Default: 0.5
    :returns: The thumbnail data (binary string)

    Note: the fixed variable will defined first, and the iteratiable variable comes later
    """
    ffmpeg = "/usr/local/bin/ffmpeg"

    if position < 0 or position >= 1.0:
        raise ValueError(
            "Position {} is not between 0.0 and 1.0".format(position))

    proc = subprocess.Popen([ffmpeg, "-i", infile], stderr=subprocess.PIPE)
    _, result = proc.communicate()
    m = re.search(r"Duration:\s*(\d+):(\d+):(\d+)\.(\d+)", result.decode('utf-8'))
    if not m:
        raise KeyError("Cannot determine duration")
    # Avoiding strptime here because it has some issues handling milliseconds.
    m = [int(m.group(i)) for i in range(1, 5)]
    duration = datetime.timedelta(hours=m[0],
                                  minutes=m[1],
                                  seconds=m[2],
                                  # * 10 because truncated to 2 decimal places
                                  milliseconds=m[3] * 10
                                  ).total_seconds()
    target = max(0, min(duration * position, duration - 0.1))
    target = "{:.3f}".format(target)
    args = [ffmpeg,
            "-ss", target,
            "-i", infile,
            "-map", "v:0",     # first video stream
            "-frames:v", "1",  # 1 frame
            "-f", "mjpeg",     # motion jpeg (aka. jpeg since 1 frame) output
            "pipe:"            # pipe output to stdout
            ]
    proc = subprocess.Popen(args, stdout=subprocess.PIPE,
                            stderr=subprocess.PIPE)
    output, _ = proc.communicate()
    with open(outfile+str(position)+".jpg", "wb") as op:
            op.write(output)

def main():
    from argparse import ArgumentParser

    parser = ArgumentParser(
        description="Extract a thumbnail from a media file using ffmpeg")
    parser.add_argument("infile", type=str, help="Input file")
    args = parser.parse_args()


    iterable = [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9]
    pool = Pool(processes=6)

    # fixed variable
    a = args.infile # filename
    b = "/tmp/out"
    func = partial(thumb_with_ffmpeg, a, b)  # relative order matters

    # iterable variable
    pool.map(func, iterable)
    pool.close()
    pool.join()


if __name__ == "__main__":
    main()

