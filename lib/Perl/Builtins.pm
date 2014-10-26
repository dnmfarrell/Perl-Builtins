use strict;
use warnings;
package Perl::Builtins;

#ABSTRACT: A list of all Perl 5 built functions

=head2 SYNOPSIS

    use Perl::Builtins;

    # get an array of functions
    my @builtin_functions = Perl::Builtins::list;

    # get an arrayref instead
    my $builtin_functions = Per::Builts::list;

=head2 DESCRIPTION

This module simply returns a list of strings of all the builtin functions in Perl. In scalar context it returns an arrayref.

=head2 RATIONALE

I wrote this module because several times I have needed a list of all builtin functions in Perl, and couldn't find an easy way to get it.

=cut

my @list = qw/AUTOLOAD
    abs
    accept
    alarm
    and
    atan2
    BEGIN
    bind
    binmode
    bless
    CHECK
    caller
    chdir
    chmod
    chomp
    chop
    chown
    chr
    chroot
    close
    closedir
    cmp
    connect
    continue
    crypt
    DESTROY
    __DATA__
    dbmclose
    dbmopen
    default
    defined
    delete
    die
    do
    dump
    END
    __END__
    each
    else
    elseif
    elsif
    endgrent
    endhostent
    endnetent
    endprotoent
    endpwent
    endservent
    eof
    eq
    eval
    evalbytes
    exec
    exists
    exit
    exp
    __FILE__
    fc
    fcntl
    fileno
    flock
    for
    foreach
    fork
    format
    formline
    ge
    getc
    getgrent
    getgrnam
    gethostbyaddr
    gethostbyname
    gethostent
    getnetbyaddr
    getnetbyname
    getnetent
    getpgrp
    getppid
    getpriority
    getprotobyname
    getprotobynumber
    getprotoent
    getpwent
    getpwnam
    getpwuid
    getservbyname
    getservbyport
    getservent
    getsockopt
    given
    glob
    gmtime
    goto
    grep
    gt
    hex
    INIT
    if
    import
    index
    int
    ioctl
    join
    keys
    kill
    __LINE__
    last
    lc
    lcfirst
    le
    length
    link
    listen
    localtime
    lock
    log
    lstat
    lt
    m
    map
    mkdir
    msgctl
    msgget
    msgrcv
    msgsnd
    my
    ne
    next
    no
    not
    oct
    open
    opendir
    or
    ord
    our
    __PACKAGE__
    pack
    package
    pipe
    pop
    pos
    print
    printf
    prototype
    push
    q
    qq
    qr
    qw
    qx
    rand
    readdir
    readline
    readlink
    readpipe
    recv
    redo
    ref
    rename
    require
    reset
    return
    reverse
    rewinddir
    rindex
    rmdir
    __SUB__
    s
    say
    scalar
    seek
    seekdir
    semctl
    semget
    semop
    send
    setgrent
    sethostent
    setnetent
    setpgrp
    setpriority
    setprotoent
    setpwent
    setservent
    setsockopt
    shift
    shmctl
    shmget
    shmread
    sin
    sleep
    socket
    socketpair
    sort
    split
    sprintf
    srand
    stat
    state
    study
    sub
    substr
    symlink
    syscall
    sysopen
    sysread
    sysseek
    system
    tell
    telldir
    tie
    time
    times
    tr
    truncate
    UNITCHECK
    uc
    ucfirst
    umask
    undef
    unless
    unlink
    unpack
    unshift
    untie
    until
    use
    utime
    values
    vec
    wait
    waitpid
    wantarray
    warn
    when
    while
    write
    -X
    x
    xor
    y/;

sub list { wantarray ? @list : \@list }

1;
