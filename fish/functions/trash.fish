function trash -d "Moves files and folders to macOS trash"
    set -l trash_version "0.3.0"

    function __trash_usage
        echo "Usage: trash [file ...]"
    end

    function __trash_version -S
        echo "trash, version $trash_version"
    end

    function __trash_move -a filepath
        set -l basepath (basename "$filepath")
        if command ls ~/.Trash/$basepath >/dev/null ^/dev/null
            set -l fileprop (string split -r -m1 "." "$basepath")

            if test (count $fileprop) -eq 2
                command mv $filepath ~/.Trash/$fileprop[1]\ (date "+%I.%M.%S %p").$fileprop[2]
            else
                command mv $filepath ~/.Trash/$fileprop[1]\ (date "+%I.%M.%S %p")
            end
        else
            command mv $filepath ~/.Trash/$basepath
        end
    end

    function __trash
        for filepath in $argv
            if command ls "$filepath" >/dev/null ^/dev/null
                __trash_move $filepath
            else
                echo "trash: $filepath: No such file or directory"
                return 1
            end
        end
    end

    if not test -d ~/.Trash/
        echo "Could not find trash folder at `~/.Trash`"
        return 1
    end

    if test (count $argv) -eq 0
        __trash_usage
        return 1
    end

    switch $argv[1]
        case "-h" "--help"
            __trash_usage
        case "-v" "--version"
            __trash_version
        case "*"
            __trash $argv
    end
end
