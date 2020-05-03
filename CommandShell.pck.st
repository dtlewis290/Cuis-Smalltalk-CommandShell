'From Cuis 5.0 [latest update: #4122] on 3 May 2020 at 4:19:04 pm'!
'Description '!
!provides: 'CommandShell' 1 0!
SystemOrganization addCategory: #'CommandShell-Base'!
SystemOrganization addCategory: #'CommandShell-Commands'!
SystemOrganization addCategory: #'CommandShell-Morphic'!
SystemOrganization addCategory: #'CommandShell-MVC'!
SystemOrganization addCategory: #'CommandShell-Piping'!
SystemOrganization addCategory: #'CommandShell-UI'!
SystemOrganization addCategory: #'CommandShell-Tests'!


!classDefinition: #CuisShellWindow category: #'CommandShell-Morphic'!
TextModel subclass: #CuisShellWindow
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CommandShell-Morphic'!
!classDefinition: 'CuisShellWindow class' category: #'CommandShell-Morphic'!
CuisShellWindow class
	instanceVariableNames: ''!

!classDefinition: #CommandShell category: #'CommandShell-Base'!
Model subclass: #CommandShell
	instanceVariableNames: 'outputStream errorStream shellSyntax environment builtinCommands commandHistory historyIndex promptString promptStringTwo foregroundProxies backgroundProxies backgroundPipelines commandLineProcesses backgroundMessageQueue keyboardConnector activeController safeToExit readSyncSemaphore'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CommandShell-Base'!
!classDefinition: 'CommandShell class' category: #'CommandShell-Base'!
CommandShell class
	instanceVariableNames: ''!

!classDefinition: #CrLfFileEditor category: #'CommandShell-Commands'!
Model subclass: #CrLfFileEditor
	instanceVariableNames: 'contents lineEndConvention directory fileName viewStyle'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CommandShell-Commands'!
!classDefinition: 'CrLfFileEditor class' category: #'CommandShell-Commands'!
CrLfFileEditor class
	instanceVariableNames: ''!

!classDefinition: #PipeJunction category: #'CommandShell-Piping'!
Model subclass: #PipeJunction
	instanceVariableNames: 'pipeToInput pipeFromOutput errorPipelineStream'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CommandShell-Piping'!
!classDefinition: 'PipeJunction class' category: #'CommandShell-Piping'!
PipeJunction class
	instanceVariableNames: ''!

!classDefinition: #PipeableEvaluator category: #'CommandShell-Piping'!
PipeJunction subclass: #PipeableEvaluator
	instanceVariableNames: 'argumentArray runState exitStatus outputHasBeenRedirected'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CommandShell-Piping'!
!classDefinition: 'PipeableEvaluator class' category: #'CommandShell-Piping'!
PipeableEvaluator class
	instanceVariableNames: ''!

!classDefinition: #ExpressionEvaluator category: #'CommandShell-Piping'!
PipeableEvaluator subclass: #ExpressionEvaluator
	instanceVariableNames: 'expression evaluationBlock'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CommandShell-Piping'!
!classDefinition: 'ExpressionEvaluator class' category: #'CommandShell-Piping'!
ExpressionEvaluator class
	instanceVariableNames: ''!

!classDefinition: #ShellBuiltinEvaluator category: #'CommandShell-Piping'!
PipeableEvaluator subclass: #ShellBuiltinEvaluator
	instanceVariableNames: 'shellBuiltin commandShell'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CommandShell-Piping'!
!classDefinition: 'ShellBuiltinEvaluator class' category: #'CommandShell-Piping'!
ShellBuiltinEvaluator class
	instanceVariableNames: ''!

!classDefinition: #PipeableOSProcess category: #'CommandShell-Piping'!
PipeJunction subclass: #PipeableOSProcess
	instanceVariableNames: 'pipeFromError processProxy keepInitialStdOutOpen keepInitialStdErrOpen accessProtect'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CommandShell-Piping'!
!classDefinition: 'PipeableOSProcess class' category: #'CommandShell-Piping'!
PipeableOSProcess class
	instanceVariableNames: ''!

!classDefinition: #ProxyPipeline category: #'CommandShell-Piping'!
OrderedCollection subclass: #ProxyPipeline
	instanceVariableNames: 'commandLine background completionSemaphore completionWatcher'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CommandShell-Piping'!
!classDefinition: 'ProxyPipeline class' category: #'CommandShell-Piping'!
ProxyPipeline class
	instanceVariableNames: ''!

!classDefinition: #CommandShellTranscript category: #'CommandShell-UI'!
WriteStream subclass: #CommandShellTranscript
	instanceVariableNames: 'cliShell lastPromptString activeController labelStringBlock'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CommandShell-UI'!
!classDefinition: 'CommandShellTranscript class' category: #'CommandShell-UI'!
CommandShellTranscript class
	instanceVariableNames: ''!

!classDefinition: #InternalPipe category: #'CommandShell-Piping'!
Stream subclass: #InternalPipe
	instanceVariableNames: 'queue writerClosed nonBlockingMode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CommandShell-Piping'!
!classDefinition: 'InternalPipe class' category: #'CommandShell-Piping'!
InternalPipe class
	instanceVariableNames: ''!

!classDefinition: #CommandShellTestCase category: #'CommandShell-Tests'!
TestCase subclass: #CommandShellTestCase
	instanceVariableNames: 'shell checkFileHandleCount procDir'
	classVariableNames: 'CheckFileHandleCount TempResult'
	poolDictionaries: ''
	category: 'CommandShell-Tests'!
!classDefinition: 'CommandShellTestCase class' category: #'CommandShell-Tests'!
CommandShellTestCase class
	instanceVariableNames: ''!

!classDefinition: #ExpressionEvaluatorTestCase category: #'CommandShell-Tests'!
TestCase subclass: #ExpressionEvaluatorTestCase
	instanceVariableNames: 'pipeJunction'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CommandShell-Tests'!
!classDefinition: 'ExpressionEvaluatorTestCase class' category: #'CommandShell-Tests'!
ExpressionEvaluatorTestCase class
	instanceVariableNames: ''!

!classDefinition: #InternalPipeTestCase category: #'CommandShell-Tests'!
TestCase subclass: #InternalPipeTestCase
	instanceVariableNames: 'pipe'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CommandShell-Tests'!
!classDefinition: 'InternalPipeTestCase class' category: #'CommandShell-Tests'!
InternalPipeTestCase class
	instanceVariableNames: ''!

!classDefinition: #PipeableOSProcessTestCase category: #'CommandShell-Tests'!
TestCase subclass: #PipeableOSProcessTestCase
	instanceVariableNames: 'procDir'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CommandShell-Tests'!
!classDefinition: 'PipeableOSProcessTestCase class' category: #'CommandShell-Tests'!
PipeableOSProcessTestCase class
	instanceVariableNames: ''!

!classDefinition: #PipelineEventsTestCase category: #'CommandShell-Tests'!
TestCase subclass: #PipelineEventsTestCase
	instanceVariableNames: 'shell checkFileHandleCount procDir'
	classVariableNames: 'TempResult'
	poolDictionaries: ''
	category: 'CommandShell-Tests'!
!classDefinition: 'PipelineEventsTestCase class' category: #'CommandShell-Tests'!
PipelineEventsTestCase class
	instanceVariableNames: ''!

!classDefinition: #ShellSyntaxTestCase category: #'CommandShell-Tests'!
TestCase subclass: #ShellSyntaxTestCase
	instanceVariableNames: 'shellSyntax'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CommandShell-Tests'!
!classDefinition: 'ShellSyntaxTestCase class' category: #'CommandShell-Tests'!
ShellSyntaxTestCase class
	instanceVariableNames: ''!

!classDefinition: #ShellWindowMorph category: #'CommandShell-Morphic'!
PluggableTextMorph subclass: #ShellWindowMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CommandShell-Morphic'!
!classDefinition: 'ShellWindowMorph class' category: #'CommandShell-Morphic'!
ShellWindowMorph class
	instanceVariableNames: ''!

!classDefinition: #ShellSyntax category: #'CommandShell-Base'!
Object subclass: #ShellSyntax
	instanceVariableNames: 'cwdDictionary cwdIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CommandShell-Base'!
!classDefinition: 'ShellSyntax class' category: #'CommandShell-Base'!
ShellSyntax class
	instanceVariableNames: ''!

!classDefinition: #ShellBuiltin category: #'CommandShell-Commands'!
Object subclass: #ShellBuiltin
	instanceVariableNames: 'name procedureSelector helpSelector needsPrompt'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CommandShell-Commands'!
!classDefinition: 'ShellBuiltin class' category: #'CommandShell-Commands'!
ShellBuiltin class
	instanceVariableNames: ''!

!classDefinition: #RemoteTask category: #'CommandShell-Piping'!
Object subclass: #RemoteTask
	instanceVariableNames: 'task taskIdentifier childProxy completionBlock aioHandler'
	classVariableNames: 'HeadlessChild Materializer Serializer SerializingStrategy'
	poolDictionaries: ''
	category: 'CommandShell-Piping'!
!classDefinition: 'RemoteTask class' category: #'CommandShell-Piping'!
RemoteTask class
	instanceVariableNames: ''!

!classDefinition: #ExternalCommandShell category: #'CommandShell-UI'!
Object subclass: #ExternalCommandShell
	instanceVariableNames: 'cliShell isRunning inputStream lineBuffer sigIntSema sigIntHandler'
	classVariableNames: 'ExternalShell'
	poolDictionaries: ''
	category: 'CommandShell-UI'!
!classDefinition: 'ExternalCommandShell class' category: #'CommandShell-UI'!
ExternalCommandShell class
	instanceVariableNames: ''!

!classDefinition: #TtyTextMorphForEditView category: #'CommandShell-Morphic'!
ProtoObject subclass: #TtyTextMorphForEditView
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CommandShell-Morphic'!
!classDefinition: 'TtyTextMorphForEditView class' category: #'CommandShell-Morphic'!
TtyTextMorphForEditView class
	instanceVariableNames: ''!

!classDefinition: #ShellWindowView category: #'CommandShell-MVC'!
ProtoObject subclass: #ShellWindowView
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CommandShell-MVC'!
!classDefinition: 'ShellWindowView class' category: #'CommandShell-MVC'!
ShellWindowView class
	instanceVariableNames: ''!

!classDefinition: #TtyPluggableTextController category: #'CommandShell-MVC'!
ProtoObject subclass: #TtyPluggableTextController
	instanceVariableNames: 'acceptOnCr callbackQueue closed readSyncSemaphore'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CommandShell-MVC'!
!classDefinition: 'TtyPluggableTextController class' category: #'CommandShell-MVC'!
TtyPluggableTextController class
	instanceVariableNames: ''!


!CuisShellWindow commentStamp: '<historical>' prior: 0!
I am a simple teletype shell session morph, providing a view on an instance of CommandShell.!

!CommandShell commentStamp: '<historical>' prior: 0!
I am a command shell, similar to /bin/sh, with a simple command line user interface. I collaborate with process proxies to provide command execution, and I provide a limited set of built in commands similar to those in /bin/sh. My built in commands are implemented in Smalltalk, and any other commands are passed to process proxies to be executed either internally as Smalltalk "doIt" expressions, or externally as commands passed to the external operating system. I am similar to a TranscriptStream (some methods are copied directly from TranscriptStream), but I also know how to accept lines of command input, parse them, and hand them off to process proxies for execution.

Three types of commands may be executed from a CommandShell: internal "builtin" commands implemented in Smalltalk; internal Smalltalk "doIt" commands; and external commands. Internal commands (builtin commands or doIt commands) may be freely mixed with external operating system commands in a command pipeline. See CommandShell class>>commandProcessing for more information.

Each command line is first evaluated as a Smalltalk expression, and is subject to further parsing only if the Smalltalk evaluation fails. In practice, this permits complete Smalltalk expressions to be evaluated easily without conflicting with shell syntax, and allows Smalltalk and unix shell commands to be freely mixed.

Simple command scripting is supported (method category 'command scripting'). Any mix of internal and external commands may be included in a script. Conditional branching is supported based on command exit status.

Open a new shell window with "CommandShell open". Type 'help' followed by <return> or <enter> for help on builtin commands.

Things that work reasonably well:
- Simple command execution for running command line programs or starting
  X programs.
- Command pipelines. Built in commands can be mixed with external
  commands, as in "help sqsh | wc -l".
- Command IO redirection with '<',  '>', '>>', '2>', and '2>>'.
- Command history and command history recall.
- Background command execution, as in "xterm&".
- <ctl-C> to interrupt a running external command.
- <ctl-D> to indicate end of file in terminal input.

Limitations include:
- Dumb tty only. Do not try to run vi.
- Standard Unix shell syntax is not completely implemented.

Race conditions are possible for certain command pipelines. See CommandShell class>>raceConditions for more information.
!

!CrLfFileEditor commentStamp: '<historical>' prior: 0!
I provide an editor on a single file. I attempt to avoid changing the line termination character convention when writing my text back to a file.

Bug: On older Squeak systems which do not support FilesStream>>truncate, file permissions may be lost when a file is rewritten at a shorter length.
!

!PipeJunction commentStamp: '<historical>' prior: 0!
I am a connector junction for input, output, and error pipelines. I obtain input from an input pipeline and, after possibly performing some kind of operation on the input objects, I send output to an output pipeline. I may also append objects onto an error pipeline.

My subclasses implement the operations on the objects which pass through a pipe junction.

In general, input pipes are connected to output pipes in a serial fashion, and error pipelines are shared by one or more instances of my subclasses.
!

!PipeableEvaluator commentStamp: 'dtl 2/1/2003 16:56' prior: 0!
I evaluate Smalltalk expressions, taking input from my pipeToInput, and print the results of the evaluation on my pipeFromOutput. I may append error messages to my errorPipelineStream. I provide a framework for pipelines of expressions, possibly combined in the same pipeline with ExternalOSProcess proxies executing external operating system commands.

My evaluationBlock may be supplied directly, or can be compiled from an expression string. If compiled from an expression string, the names 'stdin', 'stdout', 'stderr', and 'args' are used to refer to the input stream, output stream, error stream, and an array of arguments. If any of these names are used in the expression string, then the evaluation block will be compiled in such as way as to connect these names with their corresponding streams or argument array.
!

!ExpressionEvaluator commentStamp: 'dtl 2/1/2003 16:58' prior: 0!
I provide a context in which a Smalltalk expression can be evaluated as an element of a command pipeline.!

!ShellBuiltinEvaluator commentStamp: 'dtl 2/1/2003 17:47' prior: 0!
I provide the context in which a ShellBuiltin is evaluated as an element of a command pipeline.!

!PipeableOSProcess commentStamp: '<historical>' prior: 0!
I am a connector junction for input, output, and error pipelines. I collaborate with a process proxy to evaluate an internal or external process, and to move objects through the pipelines as the proxy is evaluated.

From Smalltalk, you can write to my pipeToInput, and read from my pipeFromOutput and pipeFromError streams. I implement simple streaming protocol as a convenience for reading and writing these pipe streams. I support command pipelines with the #| message, with the pipeFromOutput of one instance connected to the pipeToInput of the next instance, and a shared errorPipelineStream collecting error output text for the command pipeline.

All reading and writing should be done with the streaming protocol, rather than by direct access to the pipe streams. This is because the output pipe streams may be silently replaced by simple ReadStreams following the exit of the child process.

Normal exit for the external process may not happen when expected. If the process is writing to the output pipe, it may block on write until enough of its data is read from the pipeFromOutput pipe, after which it will exit normally.!

!ProxyPipeline commentStamp: 'dtl 12/13/2002 19:30' prior: 0!
A collection of connected PipeJunctions, representing external OS processes or internal evaluators. This class exists primarily to make the functioning of a collection of command pipelines, some of which may be evaluated as asynchronous "background" processes, easier to understand.

Events triggered by my proxies are handled and forwarded in such a way that a client (such as a CommandShell) will receive events from a ProxyPipeline as if it were an individual PipeJunction.

The user of a ProxyPipeline is responsible for closing the external resources associated with the proxies by sending either #closePipes or #finalize.!

!CommandShellTranscript commentStamp: 'dtl 1/20/2007 09:11' prior: 0!
CommandShellTranscript is a user interface for a ComandShell. It behaves like a simple teletype text terminal.!

!InternalPipe commentStamp: '<historical>' prior: 0!
I am a first-in, first-out queue with streaming behavior. I behave similarly to an OSPipe,
but am implemented in the Smalltalk image rather than with external OS pipes. I can
behave either as a blocking pipe or as a nonblocking pipe, similar to an OS pipe with
its reader end set in blocking or nonblocking mode.!

!CommandShellTestCase commentStamp: '<historical>' prior: 0!
Unit tests for CommandShell. This tests a reasonable range of command line inputs, verifying command execution and IO redirection for internal and external process proxies.

Many of the tests can try to check for unclosed file handles. The #setUp method sets the value of checkFileHandleCount (true or false) to control this. In addition, the #runAll method can separately do a count of open file handles after running all the tests. Unfortunately, there are a couple of problems with this. First, the check makes use of the /proc filesystem on Linux, which will not be available (or may be implemented differently) on other systems. Second, for reasons which I do not quite understand, files may stay open (or perhaps just appear to stay open in the /proc filesystem) after Squeak has apparently closed them. This produces intermittent failures in the unit tests. For these reasons, I recommend running the file handle count checks once or twice to make sure things are working correctly, then turning the checks off in the #setUp method to avoid seeing intermittent errors later on. If anyone figures out what is going on here, please let me know. -dtl!

!InternalPipeTestCase commentStamp: 'dtl 12/30/2001 17:05' prior: 0!
Test operation of InternalPipe in blocking and nonBlocking mode.!

!PipeableOSProcessTestCase commentStamp: 'dtl 5/21/2009 23:23' prior: 0!
Tests for PipeableOSProcess. A PipeableOSProcess provides a proxy for an external OS process with stdin, stdout, and stderr pipes connected by the proxy to the external process.!

!PipelineEventsTestCase commentStamp: 'dtl 4/26/2003 10:31' prior: 0!
This test case does not directly correspond to a class. It tests the setup of events
in the proxies and pipes of a ProxyPipeline constructed in cooperation with a
CommandShell.
!

!ShellSyntaxTestCase commentStamp: '<historical>' prior: 0!
Unit tests for ShellSyntax. Conditional tests are needed for Windows and other platforms, so not all tests are effective on all platforms. Unix is the development platform, and many of the tests are specific to a Unix file system environment.!

!ShellWindowMorph commentStamp: '<historical>' prior: 0!
I am a simple teletype shell session morph, providing a view on an instance of CommandShell.!

!ShellSyntax commentStamp: 'dtl 9/7/2009 12:36' prior: 0!
My instances implement parsing of strings in a manner similar to a simple Unix command shell. I provide path name expansion in the context of an external file system, and support the syntax required for IO redirection. All file name globbing and PATH searching are implemented in Smalltalk rather than in C library functions or an external command shell.

Most of my syntax is applicable for any operating system. Where needed, platform specific methods are in my "platform dependent" category. Currently, Unix and Windows are supported, and other platforms have not been tested. The primary difference between Unix and Windows support is that device names (such as 'C:') are used in Windows path strings. Separate current working directory strings are maintained for all Windows device names. For Unix, a single current working directory path is used. On Windows, this permits the CommandShell 'cd' command to support changing directories to another device without losing track of the current working directory for the previous device.

Command pipeline syntax is not supported here. See CommandShell for the implementation of command pipelines.
!

!ShellBuiltin commentStamp: 'dtl 2/1/2003 12:25' prior: 0!
A shell builtin command, intended to be invoked by a CommandShell.

A builtin command consists of:
 name - a String identifier, used by the CommandShell to identify and invoke the commmand.
 helpString - a String to describe the function of the command.
 procedure - a BlockContext with parameters to be passed by the CommandShell.

Commands are implemented in instance methods. To create a new command, write a
new command implementation method and a new help method for the command. Write
a new class side instance creation method patterned after one of the existing commands
and install the instance creation method in an instance of CommandShell with
CommandShell>>installCommand:.

A command implementation is a method which receives six paramaters. The parameters are
to be interpreted as follows:
	- First parameter: The EvaluatorProxy which is evaluating the command. If a command fails,
	  send #fail to this object.
	- Second parameter: The CommandShell from which the command was evaluated. Use this
	  for any additional parsing which may be required in the command implementation.
	- Third parameter: The input stream for the command.
	- Forth parameter: The output stream for the command.
	- Fifth parameter: The error stream for the command.
	- Sixth parameter: An array of optional command arguments.
!

!RemoteTask commentStamp: 'dtl 2/19/2018 19:18' prior: 0!
A RemoteTask represents a block (or any object responding to #value) to be evaluated in a headless Squeak child process. The results of evaluating the block are returned to the sender through a reference stream on an OS pipe. Asynchronous event notification may be used to signal completion of remote processing.

The block is evaluated in a remote headless image beginning with a clone of the sender image at the time of the message send. All side effects of evaluating the task block are localized to the remote image, and have no effect on the sending image. The result object may be an object of any complexity, such as a dictionary or array of result values.

On a unix system, the creation of child Squeak images is a relatively light weight operation, so tasks of varying degrees of complexity can be assigned to remote tasks with only moderate overhead.

Examples:

        " RemoteTask do: [2 + 2] "

        " (RemoteTask
                do: [ | oc |
                        oc := OrderedCollection new.
                        (1 to: 5000000) do: [ :e | e isPrime ifTrue: [oc add: e]].
                        oc ]
                whenComplete: [ :result | result inspect ]
                taskIdentifier: 'A forked Squeak image finding primes') inspect "

!

!ExternalCommandShell commentStamp: '<historical>' prior: 0!
On some platforms it is possible to use OSProcess to read and write the standard input, output and error streams. In that case, ExternalCommandShell allows Squeak to be used as a traditional text mode command shell.

When used in a headless Squeak image, ExternalCommandShell behaves like a traditional Unix command shell, except that it has the ability to evaluate Smalltalk expressions as well as other programs and commands. On a Unix system running a Squeak shell in a headless image, the Smalltalk display can be opened by entering the command "UnixProcess recapitate" at the Squeak shell prompt.

ExternalCommandShell has one instance, which is accessible as "ExternalCommandShell inSmalltalk". The shell can be stopped with "ExternalCommandShell stop" and restarted with "ExternalCommandShell start". If the shell is running when Squeak is shut down, it will be automatically be restarted when the image is restarted.
!

!TtyTextMorphForEditView commentStamp: 'dtl 5/2/2020 10:03' prior: 0!
I add a keyboard hook to a TextMorphForEditView to allow filtering of keystrokes for a simple tty terminal emulator. This class in no longer required for recent Squeak, but older versions such as Squeak 3.8 require it.!

!ShellWindowView commentStamp: '<historical>' prior: 0!
I am a simple teletype shell session view, providing a view on an instance of CommandShell.!

!TtyPluggableTextController commentStamp: '<historical>' prior: 0!
I add keyboard hooks to a PluggableTextController to allow filtering of keystrokes for a simple tty terminal emulator.!

!CommandShell class methodsFor: 'system startup' stamp: 'dtl 7/12/2002 19:26'!
startUp: resuming
	"A CommandShell may be running external processes in background, and waiting
	for those processes to complete. If the Squeak image is stopped and restarted, the
	background processes are no longer children of the Squeak process, and there is
	no way to receive notification when the processes exit. This would result in leftover
	Smalltalk processes associated with the CommandShell waiting forever for the
	external processes to exit. The simplest way to prevent this is to terminate all
	the Smalltalk processes unconditionally after an image restart."

	resuming ifTrue: [self allSubInstances do: [:e | e startUpInNewSession]]
! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 4/29/2020 19:49'!
environment

	^ environment ifNil:
		[environment := (Smalltalk at: #OSProcess ifPresent:
			[:osp | osp thisOSProcess environment copy]) ifNil: [Dictionary new]].
! !

!PipeableEvaluator methodsFor: 'printing' stamp: 'dtl 1/12/2003 00:45'!
printOn: aStream

	super printOn: aStream.
	aStream nextPutAll: ' ('; nextPutAll: self runState; nextPut: $)
! !

!ExpressionEvaluator methodsFor: 'evaluating' stamp: 'dtl 6/15/2019 11:21'!
compilerClass

	(Smalltalk hasClassNamed: #Compiler)
		ifTrue: [ ^ Smalltalk at: #Compiler ].

	(Smalltalk hasClassNamed: #OpalCompiler)
		ifTrue: [ ^ Smalltalk at: #OpalCompiler ].

	self error: 'no system compiler'
! !

!ExpressionEvaluator methodsFor: 'printing' stamp: 'dtl 3/24/2003 07:23'!
printOn: aStream

	super printOn: aStream.
	self expression isNil
		ifTrue:
			[self evaluationBlock isNil
				ifTrue:
					[aStream nextPutAll: ' for '.
					self evaluationBlock printOn: aStream]
				ifFalse:
					[aStream nextPutAll: ' for a '.
					self evaluationBlock class printOn: aStream]]
		ifFalse:
			[aStream nextPutAll: ' for '.
			self expression printOn: aStream]
! !

!ShellBuiltinEvaluator methodsFor: 'printing' stamp: 'dtl 3/22/2003 13:58'!
printOn: aStream

	super printOn: aStream.
	aStream nextPutAll: ' on '.
	self shellBuiltin printOn: aStream! !

!PipeableOSProcess methodsFor: 'printing' stamp: 'dtl 4/8/2006 19:32'!
printOn: aStream

	super printOn: aStream.
	aStream nextPutAll: ' on '.
	self processProxy printOn: aStream
! !

!ProxyPipeline methodsFor: 'printing' stamp: 'dtl 11/20/2002 19:32'!
printOn: aStream

	self background
		ifTrue: [aStream nextPutAll: 'a background ']
		ifFalse: [aStream nextPutAll: 'a foreground '].
	aStream nextPutAll: self class name, ' for "', self commandLine asString, '"'! !

!ShellBuiltin methodsFor: 'accessing' stamp: 'dtl 12/26/2001 19:54'!
name

	^ name! !

!ShellBuiltin methodsFor: 'printing' stamp: 'dtl 3/22/2003 13:53'!
printOn: aStream

	super printOn: aStream.
	aStream nextPutAll: ' for '.
	self name printOn: aStream.! !

!RemoteTask methodsFor: 'printing' stamp: 'dtl 2/17/2018 18:08'!
printOn: aStream
	super printOn: aStream.
	aStream
		nextPutAll: ' ('.
	taskIdentifier ifNotNil: [ aStream
		nextPutAll: taskIdentifier printString;
		nextPutAll: ' - ' ].
	aStream
		nextPutAll: self runState;
		nextPut: $)! !

!ExternalCommandShell class methodsFor: 'system startup' stamp: 'dtl 9/3/2010 17:10'!
shutDown: quitting
	"System is going down. Stop input processing so we will not try to 
	refer to invalid IO streams when the image is restarted. If OSProcess
	is in this  image, it important that #startup be send to ThisOSProcess
	before it is sent to ExternalCommandShell. Therefore ensure that
	ExternalCommandShell appears after ThisOSProcess in the system startup
	list."

	| shell |
	quitting
		ifTrue: [(shell := self default)
			ifNotNil: [shell shutdownInOldSession]]
! !

!ExternalCommandShell class methodsFor: 'system startup' stamp: 'dtl 9/3/2010 17:10'!
startUp: resuming

	| shell |
	resuming ifTrue:
		[(shell := self default)
			ifNotNil: [shell startUpInNewSession]]! !

!ExternalCommandShell methodsFor: 'printing' stamp: 'dtl 4/9/2006 11:11'!
printOn: aStream

	super printOn: aStream.
	aStream nextPutAll: (self isRunning ifTrue: [' (running)'] ifFalse: [' (stopped)'])
! !

!TtyPluggableTextController methodsFor: 'control defaults' stamp: 'dtl 6/24/2001 20:45'!
startUp

	self closed ifFalse: [^ super startUp]! !

!CuisShellWindow methodsFor: 'menu commands' stamp: 'dtl 9/15/2012 18:59'!
accept

	self model cr; flush; processCommand: self commandLineInput asString echo: false
! !

!CuisShellWindow methodsFor: 'updating' stamp: 'dtl 1/21/2007 13:02'!
appendEntry

	| str |
	"Append the text in the model's writeStream to the editable text. "
	textMorph asText size > model characterLimit ifTrue:
		["Knock off first half of text"
		self selectInvisiblyFrom: 1 to: textMorph asText size // 2.
		self replaceSelectionWith: Text new].
	self selectInvisiblyFrom: textMorph asText size + 1 to: textMorph asText size.
	str := model contents.
	(str size > 0) ifTrue:
		[self replaceSelectionWith: (Text
			string: str
			attribute: (TextFontChange fontNumber: self textStyle defaultFontIndex)).
		self selectInvisiblyFrom: textMorph asText size + 1 to: textMorph asText size.
		model reset]

! !

!CuisShellWindow methodsFor: 'updating' stamp: 'dtl 5/2/2020 10:53'!
update: something

	(something == #doCommand)
		ifTrue:
			[^ self accept].
	(something == #exit)
		ifTrue:
			[^ self owner delete].
	^ super update: something
! !

!CuisShellWindow methodsFor: 'command input' stamp: 'dtl 3/18/2001 18:17'!
commandLineInput

	^ (self text copyFrom: self positionAfterPromptString to: self text size) asString.

! !

!CuisShellWindow methodsFor: 'command input' stamp: 'dtl 4/7/2001 12:21'!
positionAfterPromptString
	"Answer the index of the first character after the last prompt string in my text. If
	not found, then assume that the contents of the text are all intended to be command
	input."

	| t loc |
	t := self text.
	(1 to: (t size - model promptString size))
		reverseDo: [:i |
			((loc := t findString: model promptString startingAt: i) ~= 0)
				ifTrue: [^ loc + model promptString size]].
	^ 1
! !

!CuisShellWindow methodsFor: 'model access' stamp: 'dtl 1/21/2007 10:33'!
setText: aText
	scrollBar setValue: 0.0.
	textMorph
		ifNil: [textMorph := TtyTextMorphForEditView new
						contents: aText wrappedTo: self innerBounds width-6.
				textMorph setEditView: self.
				textMorph setTextStyle: self textStyle.
				scroller addMorph: textMorph]
		ifNotNil: [textMorph newContents: aText].
	self hasUnacceptedEdits: false.
	self setScrollDeltas.! !

!CuisShellWindow methodsFor: 'model access' stamp: 'dtl 11/18/2009 22:20'!
textStyle
	"A fixed width font for the text morph"

	^ (TextStyle named: 'DefaultFixedTextStyle')
		ifNil: [TextStyle default]! !

!CuisShellWindow class methodsFor: 'instance creation' stamp: 'dtl 5/3/2020 12:28:03'!
open
	"Open a new CommandShell, and answer the instance of CuisShellWindow which it uses."

	"CuisShellWindow open"

	"TODO: label should update to CWD"
	^ self openLabel: 'Command Shell'! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 6/24/2001 19:09'!
activeController
	"In Morphic, alway nil. In MVC, the controller which most recently invoked
	a command."

	^ activeController! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 6/24/2001 19:09'!
activeController: aController
	"In Morphic, alway nil. In MVC, the controller which most recently invoked
	a command."

	activeController := aController! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 6/19/2002 07:13'!
backgroundMessageQueue
	"When a background pipeline completes, it places a message in this queue.
	The message will be displayed the next time the user accepts a line of
	text (presses CR)."

	^ backgroundMessageQueue ifNil: [backgroundMessageQueue := OrderedCollection new]
! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 8/19/2006 13:14'!
backgroundMessageQueue: anObject
	"Set the value of backgroundMessageQueue"

	backgroundMessageQueue := anObject! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 12/15/2002 16:23'!
backgroundPipelines
	"The pipelines which are currently being evaluated in background. This
	collection is used to keep track of the background command lines by giving
	each background pipeline an index number corresponding to its position in
	this collection. New pipelines are inserted at the first available nil position
	in the collection, and the collection is expanded as needed."

	^ backgroundPipelines ifNil: [backgroundPipelines := OrderedCollection new]

! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 8/19/2006 13:14'!
backgroundPipelines: anObject
	"Set the value of backgroundPipelines"

	backgroundPipelines := anObject! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 12/9/2006 10:23'!
backgroundProxies
	"All of my process proxies that are being evaluated in the background."

	backgroundProxies ifNil: [backgroundProxies := OrderedCollection new].
	^ backgroundProxies! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 12/9/2006 10:23'!
backgroundProxies: aCollection
	"All of my process proxies that are being evaluated in the background."

	backgroundProxies := aCollection
! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 12/27/2001 12:24'!
builtinCommands

	^ builtinCommands ifNil: [builtinCommands := Dictionary new]! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 7/14/2002 11:54'!
builtinCommands: aCommandDictionary

	builtinCommands := aCommandDictionary! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 3/16/2001 05:58'!
characterLimit
	"Tell the views how much to retain on screen"
	^ 20000! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 4/7/2001 12:48'!
commandHistory
	"Automatically trim the history list, and answer the resulting list."

	| trimIncrement |
	trimIncrement := 1.	"Could be a larger number to copy the collection less often"
	commandHistory isNil
		ifTrue:
			[commandHistory := OrderedCollection new]
		ifFalse:
			[(commandHistory size > (self historyDepth * 2 + (trimIncrement * 2) - 2))
				ifTrue:
					[commandHistory := commandHistory
						copyFrom: (trimIncrement * 2 + 1) to: commandHistory size]].
	^ commandHistory! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 6/15/2002 09:21'!
commandLineProcesses
	"The Smalltalk processes associated with currently executing command lines. Keep
	track of them here so that they can be conveniently terminated if something gets
	out of whack and needs cleaning up."

	commandLineProcesses ifNil: [commandLineProcesses := OrderedCollection new].
	^ commandLineProcesses
! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 8/19/2006 13:14'!
commandLineProcesses: anObject
	"Set the value of commandLineProcesses"

	commandLineProcesses := anObject! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 8/19/2006 13:14'!
environment: anObject
	"Set the value of environment"

	environment := anObject! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 2/24/2013 10:23'!
errorStream
	"Answer the value of errorStream"

	^ errorStream ifNil: [errorStream := WriteStream on: String new]! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 8/19/2006 13:14'!
errorStream: anObject
	"Set the value of errorStream"

	errorStream := anObject! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 12/9/2006 10:23'!
foregroundProxies
	"All of my process proxies that are being evaluated in the foreground."

	^ foregroundProxies ifNil: [foregroundProxies := OrderedCollection new]
! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 12/9/2006 10:23'!
foregroundProxies: aCollection
	"All of my process proxies that are being evaluated in the foreground."

	foregroundProxies := aCollection
! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 4/3/2001 22:48'!
historyIndex

	historyIndex ifNil: [historyIndex := 1].
	^ historyIndex
! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 4/22/2001 18:49'!
keyboardConnector
	"If nil, then my views should behave normally. If a WriteStream, then my
	views should attempt to forward all keyboard inputs to the WriteStream.
	This is to permit the keyboard to be connected to an externally executing
	process, then reconnected to its normal functions when the external process
	is complete."


	^ keyboardConnector! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 4/22/2001 18:56'!
keyboardConnector: aWriteStreamOrNil
	"If nil, then my views should behave normally. If a WriteStream, then my
	views should attempt to forward all keyboard inputs to the WriteStream.
	This is to permit the keyboard to be connected to an externally executing
	process, then reconnected to its normal functions when the external process
	is complete."

	keyboardConnector := aWriteStreamOrNil
! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 2/24/2013 10:23'!
outputStream
	"Answer the value of outputStream"

	^ outputStream ifNil: [outputStream := WriteStream on: String new]! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 8/19/2006 13:14'!
outputStream: anObject
	"Set the value of outputStream"

	outputStream := anObject! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 11/23/2002 13:31'!
processProxies
	"All of my process proxies."

	^ self foregroundProxies, self backgroundProxies
! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 6/17/2002 23:45'!
promptString
	"The primary command prompt string, equivalent to $PS1 in a Unix shell"

	^ promptString ifNil: [promptString := self defaultPromptString]
! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 6/17/2002 23:47'!
promptString: aString
	"The primary command prompt string, equivalent to $PS1 in a Unix shell"

	promptString := aString
! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 6/17/2002 23:46'!
promptStringTwo
	"The secondary command prompt string, equivalent to $PS2 in a Unix shell"

	^ promptStringTwo ifNil: [promptStringTwo := self defaultPromptStringTwo]
! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 6/17/2002 23:48'!
promptStringTwo: aString
	"The secondary command prompt string, equivalent to $PS2 in a Unix shell"

	promptStringTwo := aString
! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 6/25/2001 23:07'!
readSyncSemaphore
	"Used in MVC to pause the screen output when presenting a dialogue to the user"

	readSyncSemaphore ifNil: [readSyncSemaphore := Semaphore forMutualExclusion].
	^ readSyncSemaphore! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 6/25/2001 20:34'!
readSyncSemaphore: aSemaphore
	"Used in MVC to pause the screen output when presenting a dialogue to the user"

	readSyncSemaphore := aSemaphore! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 7/14/2002 15:56'!
safeToExit
	"This is a guard variable to prevent the user from running a command line containing both
	a snapshot command and an exit command. This prevents the user from entering a command
	such as 'snapshot; exit' which would cause the image to immediately exit when next restarted."

	^ safeToExit ifNil: [safeToExit := true]
! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 7/14/2002 15:56'!
safeToExit: trueOrFalse
	"This is a guard variable to prevent the user from running a command line containing both
	a snapshot command and an exit command. This prevents the user from entering a command
	such as 'snapshot; exit' which would cause the image to immediately exit when next restarted."

	safeToExit := trueOrFalse
! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 12/17/2001 11:34'!
shellSyntax
	"A pluggable instance of a command processing syntax"

	^ shellSyntax ifNil: [shellSyntax := ShellSyntax new]! !

!CommandShell methodsFor: 'accessing' stamp: 'dtl 9/8/2001 11:10'!
shellSyntax: aSyntax
	"A pluggable instance of a command processing syntax"

	shellSyntax := aSyntax! !

!CommandShell methodsFor: 'event handling' stamp: 'dtl 5/2/2020 10:55'!
backgroundPipelineComplete: aPipeline commandIndex: index
	"This message is sent when aPipeline has completed evaluation.
	Ensure that the output and error event handlers have had a chance
	to completely empty the pipes prior to cleaning things up."

	self waitUntilPipesAreEmpty: aPipeline.
	aPipeline closePipes.
	self backgroundMessageQueue addLast:
		((WriteStream on: String new)
			nextPutAll: '[', index asString, ']+ Done                     ';
			nextPutAll: aPipeline commandLine;
			cr;
			contents).
	self backgroundProxies removeAll: aPipeline.
	self unRegisterBackgroundPipeline: aPipeline at: index.
	self notifyRestorePrompt
! !

!CommandShell methodsFor: 'event handling' stamp: 'dtl 1/13/2007 19:10'!
copyAllErrorFrom: aProxy
	"An event driven data source may send this message to cause its available
	error stream characters to be processed."

	| s |
	self readSyncSemaphore critical:
		[s := aProxy errorUpToEnd.
		s isEmpty ifFalse:
			[[self errorStream nextPutAll: s]
				on: Error
				do: [:ex | ex retryUsing:
						["If the error pipe overflows we get an unhandled error,
						so wait a while and retry the write."
						(Delay forMilliseconds: self pollingDelayTime) wait.
						self errorStream nextPutAll: s]]]]
! !

!CommandShell methodsFor: 'event handling' stamp: 'dtl 1/16/2007 07:05'!
copyAllOutputFrom: aProxy
	"An event driven data source may send this message to cause its available
	characters to be processed."

	| s |
	self readSyncSemaphore critical:
		[s := aProxy upToEnd.
		s isEmpty ifFalse:
			[[self outputStream nextPutAll: s]
				on: Error
				do: [:ex | ex retryUsing:
						["If the output pipe overflows we get an unhandled error,
						so wait a while and retry the write."
						(Delay forMilliseconds: self pollingDelayTime) wait.
						self outputStream nextPutAll: s]]]]
! !

!CommandShell methodsFor: 'event handling' stamp: 'dtl 1/13/2007 19:10'!
copyErrorToEofFrom: aProxy
	"An event driven data source may send this message to cause its available
	error stream characters to be processed."

	| s |
	self readSyncSemaphore critical:
		[s := aProxy errorUpToEndOfFile.
		s isEmpty ifFalse:
			[[self errorStream nextPutAll: s]
				on: Error
				do: [:ex | ex retryUsing:
						["If the error pipe overflows we get an unhandled error,
						so wait a while and retry the write."
						(Delay forMilliseconds: self pollingDelayTime) wait.
						self errorStream nextPutAll: s]]]]
! !

!CommandShell methodsFor: 'event handling' stamp: 'dtl 1/13/2007 19:11'!
copyOutputToEofFrom: aProxy
	"An event driven data source may send this message to cause its available
	characters to be processed."

	| s |
	self readSyncSemaphore critical:
		[s := aProxy upToEndOfFile.
		s isEmpty ifFalse:
			[[self outputStream nextPutAll: s]
				on: Error
				do: [:ex | ex retryUsing:
						["If the output pipe overflows we get an unhandled error,
						so wait a while and retry the write."
						(Delay forMilliseconds: self pollingDelayTime) wait.
						self outputStream nextPutAll: s]]]]
! !

!CommandShell methodsFor: 'event handling' stamp: 'dtl 5/2/2020 10:54'!
foregroundPipelineComplete: aPipeline
	"This message is sent when aPipeline has completed evaluation.
	Ensure that the output and error event handlers have had a chance
	to completely empty the pipes prior to cleaning things up."

	self waitUntilPipesAreEmpty: aPipeline.
	aPipeline closePipes.
	self keyboardConnector: nil.
	[self foregroundProxies removeAll: aPipeline]
		on: Error
		do: ["exit command may cause the collection to be eliminated, hence an error"]
! !

!CommandShell methodsFor: 'event handling' stamp: 'dtl 1/20/2007 13:41'!
promptWhenComplete: aPipeline

	self waitUntilPipesAreEmpty: aPipeline.
	self notifyPrompt! !

!CommandShell methodsFor: 'event handling' stamp: 'dtl 10/3/2006 07:21'!
waitUntilPipesAreEmpty: aPipeline
	"Some other Smalltalk process may be updating the pipes, or we may be
	waiting for data in an external OS pipe to be read into the image. Wait
	for these to reach completion."

	[aPipeline pipesAreEmpty] whileFalse: [(Delay forMilliseconds: 100) wait]
! !

!CommandShell methodsFor: 'process proxy creation' stamp: 'dtl 11/21/2006 09:20'!
builtinCommandProxyFor: aCommandString input: in output: out error: err
	"Answer a PipeableEvaluator on a built in command, or nil."

	"CommandShell new initialize builtinCommandProxyFor: 'help' input: nil output: nil error: nil"

	| args command commandAndArgs |
	^ (self isBuiltInCommand: aCommandString)
		ifTrue:
			[commandAndArgs := self shellSyntax
									programNameAndArgumentsFrom: aCommandString
									inDirectoryPath: nil
									findExecutable: false.
			command := self builtinCommands at: commandAndArgs first.
			args := commandAndArgs last.
			^ ShellBuiltinEvaluator
				command: command
				withArguments: args
				shell: self
				pipeFrom: in
				pipeTo: out
				errorPipelineStream: err]
		ifFalse: [nil]
! !

!CommandShell methodsFor: 'process proxy creation' stamp: 'dtl 1/20/2007 14:18'!
doItProxyFor: aCommandString input: in output: out error: err
	"Answer a PipeableEvaluator on a doIt command, or nil."

	"CommandShell new doItProxyFor: '#thisIsADoIt !! ' input: nil output: nil error: nil"

	^ (self shellSyntax isDoItCommand: aCommandString)
		ifTrue: [self evaluationProxyFor: (self shellSyntax doItStringFrom: aCommandString)
					input: in
					output: out
					error: err]
! !

!CommandShell methodsFor: 'process proxy creation' stamp: 'dtl 11/21/2006 09:21'!
evaluationProxyFor: aCommandString input: in output: out error: err
	"Answer a PipeableEvaluator on a doIt command, or nil."

	"CommandShell new evaluationProxyFor: 'Smalltalk' input: nil output: nil error: nil"
	"CommandShell new evaluationProxyFor: 'BOGUS' input: nil output: nil error: nil"

	| proxy |
	proxy := ExpressionEvaluator
				command: aCommandString
				pipeFrom: in
				pipeTo: out
				errorPipelineStream: err.
	^ proxy
! !

!CommandShell methodsFor: 'process proxy creation' stamp: 'dtl 10/13/2008 21:22'!
pipeableProxyFor: aCommandString input: in output: out error: err predecessorProxy: lastProxy
	"Answer a proxy for an external OS process, or for an internal builtin command,
	or for an evaluation string. The proxy is suitable for use in a command pipeline,
	possibly mixing internal and external commands."

	"(CommandShell new pipeableProxyFor: '#''this is a doIt'' !! ' input: nil output: nil error: nil predecessorProxy: nil) value upToEnd"
	"(CommandShell new pipeableProxyFor: 'help' input: nil output: nil error: nil predecessorProxy: nil) value upToEnd"
	"(CommandShell new pipeableProxyFor: 'cat /etc/hosts' input: nil output: nil error: nil predecessorProxy: nil) value upToEnd"

	| errorPipelineStream cmd |
	errorPipelineStream := lastProxy ifNotNil: [lastProxy errorPipeForNextProxy].
	^ (((self doItProxyFor: aCommandString						"try entire line as a Smalltalk expression"
			input: in
			output: out
			error: (err ifNil: [errorPipelineStream]))
		ifNil: [self builtinCommandProxyFor: aCommandString	"is it a shell builtin?"
				input: in
				output: out
				error: (err ifNil: [errorPipelineStream])])
			ifNil: [self processProxyFor: aCommandString			"then it must be an external command"
					input: in
					output: out
					error: err
					predecessorProxy: lastProxy])
				ifNil: [cmd := (aCommandString findTokens: ' ') first.		"otherwise create evaluator to print error message"
					self evaluationProxyFor: 'stderr nextPutAll: ''sqsh: ', cmd, ': command not found''; cr. self fail'
						input: in
						output: out
						error: err]
! !

!CommandShell methodsFor: 'process proxy creation' stamp: 'dtl 10/14/2008 20:11'!
processProxyFor: aCommandString input: in output: out error: err predecessorProxy: lastProxy
	"Answer a proxy for an external OS command process. Note that the sender is
	responsible for closing the input pipe. Under certain conditions, reading up to
	end on a proxy can deadlock the VM if the input pipe remains open."

	"CommandShell new processProxyFor: '/bin/sh' input: nil output: nil error: nil predecessorProxy: nil"

	| input newInputPipe errorPipelineStream p proxy |
	self canAccessOSProcess
		ifFalse:
			["Answer a doIt proxy with an error message. Call it this way to make sure that
			the error streams get wired up correctly"
			p := self pipeableProxyFor: 'String new: 0 !! '
					input: in
					output: out
					error: err
					predecessorProxy: lastProxy.
			p errorPipelineStream nextPutAll:
				'cannot access system to run ''', aCommandString, '''', Character cr asString.
			^ p].
	((in isNil or: [lastProxy isNil]) or: [in isPipe not])
		ifTrue:
			[input := in]
		ifFalse:
			["Input from a command pipeline"
			(in isKindOf: InternalPipe)
				ifTrue:
					["The input stream is not an external OS pipe. Need to create one,
					and move the contents of the in stream into the new OSPipe prior
					to starting the external OS process."
					newInputPipe := PipeJunction externalPipeClass blockingPipe.
					lastProxy replaceOutputStreamWith: newInputPipe writer.
					input := newInputPipe reader]
				ifFalse:
					[input := in reader]].
	errorPipelineStream := lastProxy ifNotNil: [lastProxy errorPipeForNextProxy].
	proxy := PipeableOSProcess
		commandNoEvaluate: aCommandString
		environment: self environment
		workingDir: self workingDirectory
		input: input
		output: out
		error: err
		errorPipelineStream: errorPipelineStream
		shellSyntax: self shellSyntax.
	(proxy isNil and: [newInputPipe notNil])
		ifTrue: [newInputPipe closeReader]. "replacement pipe will not be read, so close its output"
	^ proxy
! !

!CommandShell methodsFor: 'process proxy creation' stamp: 'dtl 4/8/2006 18:18'!
redirectedPipeableProxyFor: aCommandString predecessorProxy: lastProxy
	"Answer a proxy for an external OS process, or for an internal builtin command,
	or for an evaluation string. The proxy is suitable for use in a command pipeline,
	possibly mixing internal and external commands."

	"(CommandShell new redirectedPipeableProxyFor: '#''this is a doIt'' !! '
							predecessorProxy: nil) value upToEnd"
	"(CommandShell new redirectedPipeableProxyFor: 'help'
							predecessorProxy: nil) value upToEnd"
	"(CommandShell new redirectedPipeableProxyFor: 'cat /etc/hosts'
							predecessorProxy: nil) value upToEnd"

	| redirectedCommand nextProxy input |
	redirectedCommand := self shellSyntax
								redirectIOFor: aCommandString
								inDirectoryPath: self workingDirectory.
	lastProxy isNil
		ifTrue:
			[input := redirectedCommand at: 2]
		ifFalse:
			[(redirectedCommand at: 2) isNil
				ifTrue:
					[input := lastProxy outputPipeForNextProxy]
				ifFalse:
					[lastProxy replaceOutputStreamWith: nil.
					input := redirectedCommand at: 2]].
	nextProxy := self pipeableProxyFor: (redirectedCommand at: 1)
		input: input
		output: (redirectedCommand at: 3)
		error: (redirectedCommand at: 4)
		predecessorProxy: lastProxy.
	^ nextProxy handleRedirectedOutputOf: lastProxy
! !

!CommandShell methodsFor: 'testing' stamp: 'dtl 8/7/2002 11:45'!
canAccessOSProcess
	"True if OSProcess is in the image and if the OSProcess plugin is functioning properly"

	"CommandShell new canAccessOSProcess"

	| osp |
	^ (osp := Smalltalk at: #OSProcess ifAbsent: []) notNil and: [osp accessor canAccessSystem]
! !

!CommandShell methodsFor: 'testing' stamp: 'dtl 9/26/2009 13:15'!
isBuiltInCommand: aCommandString
	"Answer true if aCommandString can be evaluated as a built in command."

	"CommandShell new initialize isBuiltInCommand: 'help this should answer true'"
	"CommandShell new initialize isBuiltInCommand: 'this should answer false'"

	^ self builtinCommands includesKey: (aCommandString copyUpTo: Character space)! !

!CommandShell methodsFor: 'testing' stamp: 'dtl 4/7/2001 13:04'!
isExcludedFromHistory: commandString
	"Answer true if commandString should not be remembered in the history list. The 'fc'
	and 'history' commands should be excluded."

	^ ('fc*' match: commandString)
		or: ['history*' match: commandString]! !

!CommandShell methodsFor: 'testing' stamp: 'dtl 4/19/2003 09:13'!
isExternalProcess
	"Answer true if the process which I represent is an external OSProcess. For protocol
	compatibility with PipeJunction."

	^ false! !

!CommandShell methodsFor: 'testing' stamp: 'dtl 1/29/2013 20:24'!
isOneWordCommentString: aCommandString
	"Answer true if aCommandString is one word beginning with $#, or if it is an empty string."

	"CommandShell new isOneWordCommentString: '#oneWordComment'"
	"CommandShell new isOneWordCommentString: ' #oneWordComment'"
	"CommandShell new isOneWordCommentString: ' #oneWordComment '"
	"CommandShell new isOneWordCommentString: '#three word comment'"
	"CommandShell new isOneWordCommentString: 'not a comment'"
	"CommandShell new isOneWordCommentString: 'notAComment'"
	"CommandShell new isOneWordCommentString: ''"

	| s |
	s := CommandShell withBlanksTrimmed: aCommandString.
	^ s isEmpty
		or: [(s first == self shellSyntax commentChar)
			and: [(Scanner new scanTokens: s) size == 1]]
! !

!CommandShell methodsFor: 'input character filtering' stamp: 'dtl 2/18/2007 15:37'!
checkSttyFor: characterValue
	"Check for interrupt characters and such. Consume interrupt character and
	answer nil, otherwise answer characterValue."

	(self isInterrupt: characterValue)
		ifTrue:
			[self changed: #interruptCharacter.
			^ nil].
	(self isEndOfFile: characterValue)
		ifTrue:
			[self doEndOfFile.
			^ nil].
	^ characterValue! !

!CommandShell methodsFor: 'input character filtering' stamp: 'dtl 9/3/2010 17:02'!
doEndOfFile
	"EOF character detected, close stdin to pipeline."

	| pipelineInput |
	(pipelineInput := self keyboardConnector)
		ifNotNil: [pipelineInput closeWriter]
! !

!CommandShell methodsFor: 'input character filtering' stamp: 'dtl 3/9/2002 18:22'!
doInterrupt
	"Interrupt character detected, do interrupt stuff."

	| msgStrm children answer |
	children := self externalChildren collect: [:e | e processProxy].
	(children size > 0)
		ifTrue:
			[msgStrm := WriteStream on: String new.
			(children size > 1)
				ifTrue: [msgStrm nextPutAll: 'kill processes']
				ifFalse: [msgStrm nextPutAll: 'kill process'].
			children do: [:e | msgStrm nextPutAll: ' ', e pid printString, ' (', e programName, ')'].
			msgStrm nextPut: $?.
			self readSyncSemaphore critical:
				[self pauseStProcesses.
				answer := self confirm: msgStrm contents.
				self unpauseStProcesses.
				answer ifTrue:
					[children reverseDo: [:e | e sigkill].
					self terminateStProcesses]]]
! !

!CommandShell methodsFor: 'input character filtering' stamp: 'dtl 6/7/2001 23:17'!
endOfFileCharacterValue
	"<ctl>-D"

	^ 4! !

!CommandShell methodsFor: 'input character filtering' stamp: 'dtl 6/9/2001 16:13'!
filterAndForward: aCharacter
	"Filter aCharacter, taking special action if needed. If a child process is active,
	forward aCharacter to the child and answer nil. Otherwise answer aCharacter."

	^ (self checkSttyFor: aCharacter asciiValue) ifNotNil:
		[keyboardConnector isNil
			ifTrue:
				[aCharacter]
			ifFalse:
				[keyboardConnector closed
					ifTrue:
						[aCharacter]
					ifFalse:
						[keyboardConnector nextPut: aCharacter; flush.
						nil]]]! !

!CommandShell methodsFor: 'input character filtering' stamp: 'dtl 11/7/2007 07:01'!
filterAndForwardEvent: keyboardEvent 
	"Filter keyboardEvent, taking special action if needed. If a child process
	is active, forward keyboardEvent to the child and answer nil. Otherwise
	answer keyboardEvent."

	(keyboardConnector isNil or: [keyboardConnector closed])
		ifTrue: [^ keyboardEvent]
		ifFalse: [keyboardConnector
					nextPut: keyboardEvent keyValue asCharacter;
					flush.
			^ nil]! !

!CommandShell methodsFor: 'input character filtering' stamp: 'dtl 6/7/2001 23:17'!
interruptCharacterValue
	"<ctl>-C"

	^ 3! !

!CommandShell methodsFor: 'input character filtering' stamp: 'dtl 6/7/2001 23:20'!
isEndOfFile: anInteger

	^ anInteger == self endOfFileCharacterValue
! !

!CommandShell methodsFor: 'input character filtering' stamp: 'dtl 6/7/2001 23:21'!
isInterrupt: anInteger

	^ anInteger == self interruptCharacterValue
! !

!CommandShell methodsFor: 'initialize-release' stamp: 'dtl 12/2/2001 12:05'!
clearSemaphore

	[self readSyncSemaphore isEmpty] whileFalse: [readSyncSemaphore terminateProcess].
	readSyncSemaphore signal
! !

!CommandShell methodsFor: 'initialize-release' stamp: 'dtl 12/29/2002 20:00'!
initialize

	self installCommands.
	self setHomeDirectory
! !

!CommandShell methodsFor: 'initialize-release' stamp: 'dtl 12/27/2001 12:24'!
installCommand: aShellBuiltin

	self builtinCommands at: aShellBuiltin name put: aShellBuiltin! !

!CommandShell methodsFor: 'initialize-release' stamp: 'dtl 7/14/2002 12:05'!
installCommands

	self installCommands: self defaultBuiltinCommands
! !

!CommandShell methodsFor: 'initialize-release' stamp: 'dtl 7/14/2002 12:05'!
installCommands: aCommandArray

	self builtinCommands: (ShellBuiltin commandDictionaryFor: self commands: aCommandArray)
! !

!CommandShell methodsFor: 'initialize-release' stamp: 'dtl 1/20/2007 09:26'!
open

	| tty |
	tty := CommandShellTranscript commandShell: self.
	tty open.
	^ tty

! !

!CommandShell methodsFor: 'initialize-release' stamp: 'dtl 12/11/2007 18:46'!
openLabel: aString 

	| tty |
	tty := CommandShellTranscript commandShell: self.
	tty openLabel: aString.
	^ tty

! !

!CommandShell methodsFor: 'initialize-release' stamp: 'dtl 1/25/2013 19:07'!
setHomeDirectory

	self environment.
	^ environment at: #HOME put: CommandShell defaultPathString
! !

!CommandShell methodsFor: 'initialize-release' stamp: 'dtl 12/31/2002 11:53'!
startUpInNewSession
	"Do this if the image has been restarted, in which case all external process
	references are invalid."

	self clearSemaphore.
	self terminateCommandLineProcesses.
	foregroundProxies := backgroundProxies := backgroundPipelines := nil.
	self keyboardConnector: nil
! !

!CommandShell methodsFor: 'initialize-release' stamp: 'dtl 12/15/2002 17:33'!
terminateCommandLineProcesses

	(self commandLineProcesses reject: [:e | e == Processor activeProcess])
		do: [:p | p terminate].
	commandLineProcesses := nil
! !

!CommandShell methodsFor: 'evaluation' stamp: 'dtl 9/15/2012 18:48'!
command: aCommandString
	"Evaluate aCommandString. Answer a collection of evaluated pipelines,
	or nil if nothing was done."

	"CommandShell new command: 'ls -l | cat'"
	"CommandShell new open; command: 'ls -l | cat'"
	"CommandShell new open; command: 'who'"
	"CommandShell new open; command: 'who&'"
	"CommandShell new open; command: 'sol'"
	"CommandShell new command: 'sol'"

	^self command: aCommandString echo: true
! !

!CommandShell methodsFor: 'evaluation' stamp: 'dtl 9/15/2012 18:47'!
command: aCommandString echo: showCommand
	"Evaluate aCommandString. Answer a collection of evaluated pipelines,
	or nil if nothing was done. If showCommand is true, update dependent
	views in order to display the command."

	showCommand ifTrue: [self changed: aCommandString].
	^ self evaluatePipelines: (self evaluateOrMakePipelinesFrom: aCommandString)
! !

!CommandShell methodsFor: 'evaluation' stamp: 'dtl 4/8/2018 19:10'!
copy: aCommandString withoutEscapedLineEnds: lineEndCharacter
	"Copy replacing escaped lineEndCharacter with space. Use $\ as the escape token,
	and if the following character is lineEndCharacter, then replace the sequence with
	a space. Assume that lines are delimited by a single character, not by e.g. <cr><lf>
	as in Windows line conventions."

	"CommandShell new copy:
		'abc\	d\
ef\ghi\' withoutEscapedLineEnds: Character cr
	"

	| rs ws |
	rs := aCommandString readStream.
	ws := '' writeStream.
	[rs atEnd] whileFalse: [ | c |
		c := rs next.
		(c = $\ and: [
			rs atEnd not
				and: [rs peek = lineEndCharacter]])
		ifFalse: [ ws nextPut: c ]
		ifTrue: [ rs next. ws nextPut: Character space]].
	^ws contents.
! !

!CommandShell methodsFor: 'evaluation' stamp: 'dtl 12/11/2007 18:39'!
evaluatePipeline: aPipeline
	"Evaluate aPipeline with event handlers to process output and error data."

	"CommandShell new evaluatePipeline: 
			(CommandShell new
				pipelineCollectionFrom: 'ls NOSUCHFILE * | cat | dd | cat | wc; ps -aef | cat& pwd | cat') first"

	| index |
	self registerOutputEventsFor: aPipeline.
	self registerErrorEventsFor: aPipeline.
	aPipeline background
		ifTrue:
			[index := self registerBackgroundPipeline: aPipeline.
			self registerBackgroundCompletionEventsFor: aPipeline
				commandIndex: index.
			self backgroundProxies addAll: aPipeline.
			aPipeline value.
			"Print the index of the background process."
			self errorStream nextPutAll: '[', index asString, '] '.
			aPipeline last isExternalProcess ifTrue:
				[aPipeline last processProxy pid printOn: self errorStream].
			self errorStream cr; nextPut: Character lf]
		ifFalse:
			[self keyboardConnector: aPipeline pipeToInput.
			self registerForegroundCompletionEventsFor: aPipeline.
			self foregroundProxies addAll: aPipeline.
			aPipeline value].
	^ aPipeline
! !

!CommandShell methodsFor: 'evaluation' stamp: 'dtl 9/3/2010 17:04'!
evaluatePipelines: aPipelineCollection
	"Evaluate the process proxies in aPipelineCollection, and process their output and error
	streams. Answer aPipelineCollection."

	| lastForegroundPipeline completionSemaphore |
	lastForegroundPipeline := nil.
	aPipelineCollection isEmpty ifFalse:
		[lastForegroundPipeline := aPipelineCollection reversed
			detect: [:p | p background not]
			ifNone: [].
		lastForegroundPipeline ifNotNil: [self registerPromptEventFor: lastForegroundPipeline].
		aPipelineCollection do: [:pipeline |
			completionSemaphore := Semaphore new.
			pipeline background
				ifTrue: [completionSemaphore signal "no wait"]
				ifFalse: [pipeline when: #complete send: #signal to: completionSemaphore].
			self evaluatePipeline: pipeline.
			completionSemaphore wait]].
	lastForegroundPipeline ifNil: [self notifyPrompt].
	self resetSafeToExitFlag.
	^ aPipelineCollection
! !

!CommandShell methodsFor: 'evaluation' stamp: 'dtl 11/20/2006 08:10'!
pipeline: aCommand
	"Find the individual commands in a command pipeline string, and execute them
	as a command pipeline. Answer a ProxyPipeline collection of processes in the pipeline."

	"(CommandShell new pipeline: 'ps | grep ps | wc') last output"
	"CommandShell new pipeline: 'ls NOSUCHFILE * | dd | cat'"

	| sema pipeline |
	sema := Semaphore new.
	pipeline := ProxyPipeline fromString: aCommand shell: self.
	pipeline when: #complete send: #signal to: sema.
	pipeline value.
	sema wait.
	^ pipeline
! !

!CommandShell methodsFor: 'evaluation' stamp: 'dtl 9/15/2012 18:59'!
processCommand: aCommandString
	"Evaluate aCommandString in a separate Smalltalk process. This permits the
	user interface to remain responsive."

	^self processCommand: aCommandString echo: true
! !

!CommandShell methodsFor: 'evaluation' stamp: 'dtl 4/8/2018 20:28'!
processCommand: aCommandString echo: showCommand
	"Evaluate aCommandString in a separate Smalltalk process. This permits the
	user interface to remain responsive. If showCommand is true, update dependent
	views in order to display the command."

	| line |
	aCommandString last = $\
		ifTrue: [ "excaped line end, more to follow"
			^self notifyNewline].

	line := self copy: aCommandString withoutEscapedLineEnds: Character cr.
	self commandLineProcesses add:
		([self command: line echo: showCommand.
		self commandLineProcesses
				remove: Processor activeProcess
				ifAbsent: []] forkAt: Processor userBackgroundPriority)
! !

!CommandShell methodsFor: 'evaluation' stamp: 'dtl 12/15/2002 16:48'!
registerBackgroundPipeline: aPipeline
	"Register aPipeline and answer an index number identifier."

	| index |
	aPipeline background
		ifTrue:
			["Find available slot in registry, expanding if needed"
			index := self backgroundPipelines identityIndexOf: nil.
			(index > 0)
				ifTrue:
					[self backgroundPipelines at: index put: aPipeline.
					^ index]
				ifFalse:
					[self backgroundPipelines addLast: aPipeline.
					^ backgroundPipelines size]]
		ifFalse:
			[self error: 'expected a background pipeline']
! !

!CommandShell methodsFor: 'evaluation' stamp: 'dtl 6/4/2006 17:44'!
resetSafeToExitFlag
	"When all foreground and background proxies are complete, the safeToExit
	flag may be set to true. The flag is set false when a snaphot command is
	evaluated, and is checked by any command which would cause Squeak to
	exit. This prevents Squeak from automatically exiting when restarting the
	image."

	[[self foregroundProxies isEmpty not or: [self backgroundProxies isEmpty not]]
		whileTrue: [(Delay forMilliseconds: self pollingDelayTime * 2) wait].
	self safeToExit: true] forkAt: Processor userBackgroundPriority
! !

!CommandShell methodsFor: 'evaluation' stamp: 'dtl 12/15/2002 16:34'!
unRegisterBackgroundPipeline: aPipeline at: index

	(self backgroundPipelines at: index) == aPipeline
		ifTrue: [self backgroundPipelines at: index put: nil]
		ifFalse: [self error: 'inconsistent registry']
! !

!CommandShell methodsFor: 'evaluation' stamp: 'dtl 9/15/2012 18:25'!
waitForCommand: aCommandString
	"Evaluate aCommandString in a separate Process, and signal completionSemaphore
	when complete. Answer a collection of evaluated pipelines, or nil if nothing was done."

	| sema pipelines lastPipeline |
	self changed: aCommandString.
	pipelines := self evaluateOrMakePipelinesFrom: aCommandString.
	pipelines isEmpty ifFalse:
		[lastPipeline := pipelines last.
		lastPipeline isComplete ifFalse:
			[sema := Semaphore new.
			lastPipeline when: #complete
				send: #signal
				to: sema.
			[self evaluatePipelines: pipelines] forkAt: Processor userBackgroundPriority.
			lastPipeline isComplete ifFalse: [sema wait].
			self waitUntilPipesAreEmpty: lastPipeline]].
	^ pipelines
! !

!CommandShell methodsFor: 'command scripting' stamp: 'dtl 3/18/2003 20:33'!
command: aCommandString onFailureDo: aBlockWithZeroOrOneParameter
	"Evaluate aCommandString. On failure, answer the result of evaluating
	aBlockWithOneParameter with the collection of evaluated pipelines as
	its parameter. Otherwise, answer a collection of evaluated pipelines or
	nil if nothing was done."

	"CommandShell new open;
		command: 'who'
		onFailureDo: [:p | 'the proxy pipeline collection which failed was ', p printString]"
	"CommandShell new open;
		command: 'ls NOSUCHFILE'
		onFailureDo: [:p | 'the proxy pipeline collection that failed was ', p printString]"
	"CommandShell new open;
		command: 'ls NOSUCHFILE'
		onFailureDo: ['the command failed']"

	| pipelines |
	pipelines := self command: aCommandString.
	(pipelines anySatisfy: [:p | p succeeded not])
		ifTrue:
			[(aBlockWithZeroOrOneParameter numArgs == 0)
				ifTrue: [^ aBlockWithZeroOrOneParameter value]
				ifFalse: [^ aBlockWithZeroOrOneParameter value: pipelines]]
		ifFalse: [^ pipelines]

! !

!CommandShell methodsFor: 'command scripting' stamp: 'dtl 3/18/2003 23:12'!
if: aCommandStringOrScript then: successBlock else: failureBlock
	"Evaluate aCommandStringOrScript, then evaluate successBlock or failureBlock
	depending on the exit status of the command or script. The blocks may use
	either zero or one argument. If a single argument is used, the collection of
	evaluated pipelines is passed to the block as an argument."

	"CommandShell new open;
		if: 'who'
		then: ['the command succeeded']
		else: ['the command failed']"
	"CommandShell new
		if: 'who
			ls NOSUCHFILE
			pwd'
		then: ['the script succeeded']
		else: ['the script failed']"
	"CommandShell new
		if: 'who
			ls NOSUCHFILE
			pwd'
		then: [:p | 'the script succeeded ', p printString]
		else: [:p | 'the script failed ', p printString]"

	| pipelines |
	pipelines := self script: aCommandStringOrScript
		onFailureDo: [:p | (failureBlock numArgs == 0)
						ifTrue: [^ failureBlock value]
						ifFalse: [^ failureBlock value: p]].
	(successBlock numArgs == 0)
		ifTrue: [^ successBlock value]
		ifFalse: [^ successBlock value: pipelines]
! !

!CommandShell methodsFor: 'command scripting' stamp: 'dtl 12/15/2002 18:50'!
script: aScriptString
	"A script is a String containing a list of commands separated by Character cr.
	Evaluate each command string in the array until a failure is encountered.
	Answer the last collection of pipelines to have been evaluated."

	"CommandShell new open; 
		script: 'who
				help
				ls -l NOSUCHFILE
				help'"

	^ self script: aScriptString onFailureDo: [:p | p]

! !

!CommandShell methodsFor: 'command scripting' stamp: 'dtl 1/21/2007 20:19'!
script: aScriptString onFailureDo: aBlockWithZeroOrOneParameter
	"A script is a String containing a list of commands separated by Character cr.
	Evaluate each command in aScriptString until a failure is encountered.
	On failure, answer the result of evaluating aBlockWithOneParameter with
	the collection of evaluated pipelines as its parameter. Otherwise, answer the
	last collection of pipelines to have been evaluated."

	"CommandShell new open; 
		script: 'who
				help
				ls -l NOSUCHFILE
				help'
		onFailureDo: [:p | 'the pipeline collection that failed was ', p printString]"
	"CommandShell new open; 
		script: 'who
				help
				ls
				help'
		onFailureDo: [:p | 'the pipeline collection that failed was ', p printString]"
	"CommandShell new open; 
		script: 'who
				help
				ls -l NOSUCHFILE
				help'
		onFailureDo: ['the pipeline collection failed']"

	| commandStream pipelines |
	commandStream := ReadStream on:
						(aScriptString
							copyReplaceAll: Character lf asString
							with: Character cr asString).
	pipelines := nil.
	[commandStream atEnd]
		whileFalse:
			[pipelines := self
				command: commandStream nextLine
				onFailureDo:
					[:p | (aBlockWithZeroOrOneParameter numArgs == 0)
						ifTrue: [^ aBlockWithZeroOrOneParameter value]
						ifFalse: [^ aBlockWithZeroOrOneParameter value: p]]].
	^ pipelines

! !

!CommandShell methodsFor: 'command scripting' stamp: 'dtl 12/15/2002 18:47'!
scriptDoAll: aScriptString
	"A script is a String containing a list of commands separated by Character cr.
	Evaluate each command in aScriptString. Ignore failures and force evaluation of
	all commands in the script. Answer the last pipeline collection to have been
	evaluated."

	"CommandShell new open; 
		scriptDoAll: 'who
				help
				ls -l NOSUCHFILE
				help'"

	| commandStream lastPipelineCollection |
	commandStream := ReadStream on:
						(aScriptString
							copyReplaceAll: Character lf asString
							with: Character cr asString).
	[commandStream atEnd]
		whileFalse:
			[lastPipelineCollection := self command: commandStream nextLine].
	^ lastPipelineCollection

! !

!CommandShell methodsFor: 'defaults' stamp: 'dtl 7/14/2002 12:42'!
defaultBuiltinCommands

	^ #(cd: clear: copyToError: copyToOutput: edit: snapshot: exit: fc: help: history: inspect: pwd: sls: sqsh: type:)
! !

!CommandShell methodsFor: 'defaults' stamp: 'dtl 6/17/2002 23:43'!
defaultPromptString

	^ '$ '! !

!CommandShell methodsFor: 'defaults' stamp: 'dtl 6/17/2002 23:45'!
defaultPromptStringTwo

	^ '> '! !

!CommandShell methodsFor: 'defaults' stamp: 'dtl 4/8/2001 15:26'!
historyDepth
	"Number of commands to retain in the command history list"

	^ 100! !

!CommandShell methodsFor: 'defaults' stamp: 'dtl 4/8/2001 15:11'!
invalidCommandMessage

	^ 'invalid command', Character cr asString! !

!CommandShell methodsFor: 'defaults' stamp: 'dtl 6/4/2006 18:01'!
pollingDelayTime
	"For various polling loops, number of milliseconds to delay"

	^ 50
! !

!CommandShell methodsFor: 'command history' stamp: 'dtl 1/28/2013 21:40'!
editCommand: aString

	^ UIManager default
		request: 'edit command'
		initialAnswer: aString! !

!CommandShell methodsFor: 'command history' stamp: 'dtl 4/22/2001 10:48'!
historyAt: anInteger

	| bufferSize index |
	bufferSize := commandHistory size / 2.
	(anInteger > 0)
		ifTrue:
			[index := bufferSize + 1 - historyIndex + anInteger * 2]
		ifFalse:
			[index := bufferSize + anInteger * 2].
	((index > commandHistory size) | (index < 1))
		ifTrue: [^ '']
		ifFalse: [^ commandHistory at: index]
! !

!CommandShell methodsFor: 'command history' stamp: 'dtl 4/7/2001 13:05'!
saveInHistoryList: aCommandString

	((aCommandString size == 0) or: [self isExcludedFromHistory: aCommandString])
		ifFalse:
			[self commandHistory add: self historyIndex printString; add: aCommandString.
			historyIndex := historyIndex + 1]
! !

!CommandShell methodsFor: 'command line parsing' stamp: 'dtl 1/22/2007 07:04'!
evaluateOrMakePipelinesFrom: aCommandString
	"Convert aCommandString into a structured collection of process proxies,
	possibly after evaluating aCommandString as Smalltalk."

	"CommandShell new evaluateOrMakePipelinesFrom: 'who | cat | wc; ps -aef | cat& pwd | cat'"
	"CommandShell new evaluateOrMakePipelinesFrom: 'Array new: 10' "

	| process |
	"Ignore trivial case of a single word starting with $#"
	(self isOneWordCommentString: aCommandString)
		ifTrue:
			[^ #()]
		ifFalse:
			[process := self tryEvaluatingAsSmalltalk: aCommandString.
			(process exitStatus == #success)
				ifTrue: "aCommandString was successfully evaluated as a Smalltalk expression"
					[self outputStream nextPutAll: process upToEnd.
					self errorStream nextPutAll: process errorUpToEnd.
					self saveInHistoryList: aCommandString.
					^ #()]
				ifFalse: "Treat aCommandString as a command pipeline"
					[^ self pipelineCollectionFrom: aCommandString]]
! !

!CommandShell methodsFor: 'command line parsing' stamp: 'dtl 1/29/2013 20:25'!
pipelineCollectionFrom: aCommandString
	"Break aCommandString into individual pipeline command strings, and answer a
	collection of process proxy pipelines."

	"CommandShell new pipelineCollectionFrom: 'who | cat | wc; ps -aef | cat& pwd | cat'"

	| str pipelineCollection tokens strm cmd cmdWithTerm pipeline lastProxy |
	str := CommandShell withBlanksTrimmed: aCommandString.
	pipelineCollection := OrderedCollection new.
	(self shellSyntax isComment: str)
		ifFalse:
			[tokens := str findTokens: ';&' keep: ';&'.
			strm := ReadStream on: tokens.
			[strm atEnd]
				whileFalse:
					[cmd := CommandShell withBlanksTrimmed: strm next.
					(self shellSyntax isComment: cmd)
						ifFalse:
							[strm atEnd
								ifTrue:
									[((cmd size == 1) and: [((cmd at: 1) == $;) | ((cmd at: 1) == $&)])
										ifTrue:
											["Special case, user has entered ';<cr>' or '&<cr>'"
											cmd := cmdWithTerm := '']
										ifFalse:
											[cmdWithTerm := cmd]]
								ifFalse:
									[cmdWithTerm := cmd, strm peek].
							self saveInHistoryList: cmdWithTerm.
							(cmdWithTerm size > 0)
								ifTrue:
									[pipeline := ProxyPipeline fromString: cmd shell: self.
									pipeline background:
										(strm next = self shellSyntax noWaitToken).
									lastProxy := pipeline last.
									lastProxy ifNil:
										[self inform: 'cannot access system'.
										^ nil].
									lastProxy outputPipeForNextProxy
										ifNotNil:
											[lastProxy setNonBlockingOutput].
									pipelineCollection add: pipeline]]]].
	^ pipelineCollection
! !

!CommandShell methodsFor: 'command line parsing' stamp: 'dtl 4/20/2003 15:35'!
tryEvaluatingAsSmalltalk: aCommandString
	"Attempt to treat aCommandString as a Smalltalk expression running in an
	evaluation process. Evaluate the proxy and set exit status to reflect failure
	on either the expression compilation or the runtime evaluation. Answer the
	process proxy."

	"CommandShell new tryEvaluatingAsSmalltalk: 'this expression should fail in the compiler'"
	"CommandShell new tryEvaluatingAsSmalltalk: '#this expressionShouldFailInRuntimeEvaluation'"
	"CommandShell new tryEvaluatingAsSmalltalk: '#thisIsAValidSymbolExpression'"
	"CommandShell new tryEvaluatingAsSmalltalk: 'Smalltalk'"
	"CommandShell new tryEvaluatingAsSmalltalk: '#oneWordCommentShouldFail'"

	| process |
	process := self evaluationProxyFor: aCommandString input: nil output: nil error: nil.
	process value.
	process closeErrorPipeline. "Last process in pipeline, so it can be closed."
	^ process! !

!CommandShell methodsFor: 'working directory' stamp: 'dtl 12/29/2002 20:14'!
home
	"Home directory. Use the environment variable, and set it in #initialize."

	^ self environment at: #HOME
! !

!CommandShell methodsFor: 'working directory' stamp: 'dtl 1/25/2013 19:07'!
workingDirectory

	^ self shellSyntax workingDirectory
		ifNil:
			[shellSyntax workingDirectory: CommandShell defaultPathString; workingDirectory]! !

!CommandShell methodsFor: 'working directory' stamp: 'dtl 12/16/2001 20:15'!
workingDirectory: aPathString

	self shellSyntax workingDirectory: aPathString
! !

!CommandShell methodsFor: 'VM building' stamp: 'dtl 1/25/2013 19:06'!
makeVmIn: buildDirectoryPathName
	"Rebuild the virtual machine and plugins in the buildDirectoryPathName
	directory. If the build is successful, save the image and restart using the
	new VM. This assumes that the currently executing VM is either located in,
	or linked to, the buildDirectoryPathName directory."

	"CommandShell makeVmIn: CommandShell defaultPathString, CommandShell pathSeparator, 'build'"

	self canAccessOSProcess
		ifFalse:
			[^ self notify: 'OSProcess not available or OSProcess plugin not functioning'].
	self if: 'cd ', buildDirectoryPathName
		then:
			[self if: 'make'
				then:
					[self script: 'echo make completed successfully, restarting VM; OSProcess quitAndRestart !!']
				else:
					[self script: 'echo make failed']]
		else:
			[self script: 'echo cannot change directory to ', buildDirectoryPathName]
! !

!CommandShell methodsFor: 'command prompt' stamp: 'dtl 1/20/2007 10:49'!
notifyAlternatePrompt
	"Display $PS2"

	self changed: #alternatePrompt! !

!CommandShell methodsFor: 'command prompt' stamp: 'dtl 4/8/2018 20:29'!
notifyNewline
	"The view should do o a carriage return and line feed with no new prompt display"

	self changed: #newLine! !

!CommandShell methodsFor: 'command prompt' stamp: 'dtl 1/20/2007 10:48'!
notifyPrompt
	"Display $PS1"

	self changed: #prompt! !

!CommandShell methodsFor: 'command prompt' stamp: 'dtl 1/20/2007 10:49'!
notifyRestorePrompt
	"Restore last prompt display"

	self changed: #restorePrompt! !

!CommandShell methodsFor: 'event registration' stamp: 'dtl 1/20/2007 13:46'!
registerBackgroundCompletionEventsFor: aPipeline commandIndex: index
	"When an event driven pipeline is complete, it will trigger #complete."

	aPipeline when: #complete
		send: #backgroundPipelineComplete:commandIndex:
		to: self
		withArguments: {aPipeline . index}

! !

!CommandShell methodsFor: 'event registration' stamp: 'dtl 1/13/2007 17:22'!
registerErrorEventsFor: aPipeline
	"When an event driven PipeJunction has error data available, it will
	trigger #errorDataReady."

	aPipeline when: #errorDataReady
		send: #copyAllErrorFrom:
		to: self
		with: aPipeline
! !

!CommandShell methodsFor: 'event registration' stamp: 'dtl 12/15/2002 13:29'!
registerForegroundCompletionEventsFor: aPipeline
	"When an event driven pipeline is complete, it will trigger #complete."

	aPipeline when: #complete
		send: #foregroundPipelineComplete:
		to: self
		with: aPipeline
! !

!CommandShell methodsFor: 'event registration' stamp: 'dtl 1/13/2007 17:22'!
registerOutputEventsFor: aPipeline
	"When an event driven PipeJunction has new data available, it will
	trigger #outputDataReady."

	aPipeline when: #outputDataReady
		send: #copyAllOutputFrom:
		to: self
		with: aPipeline
! !

!CommandShell methodsFor: 'event registration' stamp: 'dtl 1/20/2007 13:45'!
registerPromptEventFor: aPipeline

	aPipeline when: #complete
		send: #promptWhenComplete:
		to: self
		with: aPipeline
! !

!CommandShell methodsFor: 'command support' stamp: 'ThierryGoubier 9/20/2013 15:19'!
scheduleToEvaluate: aBlock
	"Evaluate aBlock, typically to create a new scheduled window. Make it work in
	both Morphic and MVC. In Morphic, just evaluate aBlock, but in MVC, put it in
	a queue for evaluation within a control loop. This method may be sent from
	a process running independent of MVC controller scheduling.
	
	Newer Squeak images implement #addDeferredUIMessage in the current
	project, eliminating the need for an #isMorphic test. This mechanism is not
	available for older images or for Pharo."

	CommandShell isMorphic
		ifTrue: [WorldState addDeferredUIMessage: aBlock]
		ifFalse: [(Smalltalk at: #ScheduledControllers) activeController addDeferredUIMessage: aBlock]! !

!CommandShell methodsFor: 'command support' stamp: 'dtl 1/20/2007 14:09'!
splitPipelineCommands: aCommand
	"Answer a list of the individual commands in a command pipeline string,
	delimited by the pipe character."

	^ self shellSyntax splitPipelineCommands: aCommand
! !

!CommandShell class methodsFor: 'instance creation' stamp: 'dtl 12/11/2007 21:22'!
command: aCommandString
	"Evaluate aCommandString in the context of a CommandShell, using a
	CommandShellTranscript to display the results."

	"CommandShell command: 'help'"
	"CommandShell command: 'ls'"

	| cs w |
	cs := self new.
	w := cs openLabel: self defaultWindowName.
	w scheduleToEvaluate: [w nextPutAll: aCommandString; cr].
	w processCommand: aCommandString.
	^ w
! !

!CommandShell class methodsFor: 'instance creation' stamp: 'dtl 12/27/2001 23:36'!
open
	"CommandShell open"

	^ self new open! !

!CommandShell class methodsFor: 'instance creation' stamp: 'dtl 3/17/2003 21:19'!
openLabel: aString

	"CommandShell openLabel: self defaultWindowName"

	^ self new openLabel: aString
! !

!CommandShell class methodsFor: 'instance creation' stamp: 'dtl 6/27/2010 16:08'!
openWithHelp
	"CommandShell openWithHelp"

	self open processCommand: 'help'
! !

!CommandShell class methodsFor: 'documentation' stamp: 'dtl 12/29/2001 14:18'!
commandProcessing
	"Explanation of the command parsing and evaluation."

	"CommandShell new pipeline: 'CommandShell commandProcessing!! | edit'"

	^
'CommandShell behaves similarly to a Unix command shell. One or more Morphic or MVC views can be opened on an instance of CommandShell. Command lines are accepted in the view, passed to the CommandShell instance (the model), and the results are displayed in the view(s). The overall behavior can be thought of as a Transcript acting like an xterm window, and the CommandShell acting like a /bin/sh shell.

A command line is first evaluated as a Smalltalk expression if possible. If this evaluation fails, either as a result of a sytax error or a runtime error, it is assumed to be a command string with syntax similar to that of a Unix command shell.

The command line is parsed by CommandShell to break command lines into elements of a command pipeline. All further parsing, such as file name expansion, is performed by an instance of ShellSyntax.

Three types of commands may be executed from a CommandShell:
1) Internal "builtin" commands are implemented in Smalltalk, and behave similarly to the shell builtin commands of a typical Unix command shell. See protocol category "shell builtins" for the implementation of these builtin shell commands.
2) Internal "doIt" commands are simple Smalltalk expression strings, terminated by a $!! character, which are evaluated as Smalltalk expressions, and which recognize the tokens "stdin", "stdout", and "stderr" as temporary variables in the doIt expression. An internal doIt command is evaluated such that it may be incorporated into a command pipeline with access to the stdin/stdout/stderr streams used in the command pipeline. In the current implementation, a doIt command may not include a $| character, which has meaning both for Smalltalk syntax and for Unix command line processor syntax.
3) External commands. Any command expression not recognized as a shell builtin or as a doIt expression is passed to an external process proxy for execution by the external operating system, with stdin/stdout/stderr incorporated into the command pipeline.

Internal and external commands can be freely mixed in a command pipeline, with results which should be familiar to users of Unix command shells. Pipes are implemented as instances of OSPipe or InternalPipe, and are capable of passing streams of characters from one process proxy to the next. All commands (internal or external) evaluate to strings, such that their results can either be passed through a pipe to the next command proxy in a pipeline, or displayed in the terminal window view if the proxy represents the last command in a command pipeline. Error messages (also strings) are written to an errorPipelineStream which is shared by all proxies in a command pipeline, such that any error messages are accumulated for the entire command pipeline.'! !

!CommandShell class methodsFor: 'documentation' stamp: 'dtl 4/11/2018 21:12'!
htmlOverview
	"A general overview"

	^
'<html><head><title>Introduction to CommandShell</title></head>
<body>
<h3>CommandShell</h3>
 CommandShell is a Smalltalk implementation of a command processor shell and terminal
 window. It is intended to behave like to a simple terminal window (like xterm) running
 a Unix command shell (like /bin/sh). It lacks some elements of Unix shell syntax, and
 does not provide terminal emulation, but it adds some nice Smalltalk enhancements such
 as a text editor which works in a command pipeline, and the ability to evalute Smalltalk
 expressions in a command pipeline with Unix commands.

<h3>How to use CommandShell</h3>
  Evaluate "CommandShell open" or, if you have loaded the change set to put CommandShell
  in your world menu, just select "Command Shell" from the "open..." menu entry.
  To use the command shell window, enter commands on the command line (after
  the "$ " command prompt, followed by cr to accept the command. The "help" command
  gives some clues as to what can be done. In general, just try any command which
  you might otherwise enter into a Unix shell or xterm window. Then try some of
  the Smalltalk features such as mixing Smalltalk expressions with Unix commands, and
  piping commands into Smalltalk editors.

<h3>Basic Concepts</h3>
<ul><li><h4>  Commands</h4>
    Smalltalk uses objects and messages, with expressions arranged in a natural
    Noun-Verb-Predicate sentence structure, similar to that of some spoken languages.
    In contrast, many other computer systems use a style in which users issue
    a command to the system, in which the "command" (a verb) is followed by various
    (predicate) modifiers. In the case of a traditional command-line interface, such
    as a Unix shell, the command is usualy the name of a program, and the modifiers
    are parameters passed to the program to influence its behavior. CommandShell attempts
    to provide a command line interface for executing commands within Squeak, in
    a style and environment which is comforable for someone accustomed to the
    Smalltalk style of expression.
<p>
<li><h4>  Process Proxies</h4>
    A command line user interface, such as a Unix shell or a "DOS window" in
    Windows, revolves around the notion of executing programs from user commands.
    When Squeak is hosted in another operating system, it is useful to be able to
    execute an external program from a command line expression. A process proxy
    is an object which represents the evaluation of such an external command
    in a command line environment.
<p>
    From the point of view of Squeak, a process proxy might just as well represent
    the evaluation of a Smalltalk expression in the context of a command line
    environment. Thus a process proxy can be an object which represents the execution
    of an external program or an internal Smalltalk expression. It is created from a
    command line expression, and provides a representation of certain aspects of the
    external (or internal) process execution, such as process run state, exit status, and
    the input, output and error streams for the process.
<p>
    External process proxies are used to evaluate programs in the external operating
    system (this requires the OSProcess change set in addition to CommandShell). Internal
    process proxies are used to evaluate "built in" commands for a command shell,
    such as the "cd" command to change the working directory for the command shell.
    Internal proxies are also used for evaluating "doIt" expressions within a command
    pipeline. In this case, the variables "stdin", "stdout", and "stderr" are pre-defined
    such that the doIt expression can directly access the input, output and error
    pipes for the internal process proxy (in other words, the doIt expression
    "stdout nextPutAll: ''Hello world'' !!" will write ''Hello world'' on the output pipe
    of the proxy).
<p>
<li><h4> Pipelines</h4>
    Powerful computing systems may be built upon simple design metaphors. In
    Smalltalk, the concept of objects communicating through messages is generalized
    and extended to produce the Squeak system. In Unix systems, the metaphor of a
    pipe with data flowing between two programs is generalized to produce a mechanism
    for connecting small programs to produce complex systems. The command line shells
    for Unix support this metaphor by providing syntax for connecting two or more
    commands together into more complex command pipelines.
<p>
    CommandShell provides a framework for connecting several process proxies into a
    command pipeline, using command syntax similar to that of a Unix shell. Since the
    process proxies are implemented in Smalltalk, the "programs" in a command pipeline
    may consist of process proxies representing external programs, or of proxies representing
    the evaluation of internal Smalltalk expressions. The objects which flow through
    the pipes in a command pipeline are assumed to be characters, such that the external
    commands can operate on the streams of characters in the usual way, and the internal
    Smalltalk commands read and write streams of characters.
<p>
    Just as programs (or internal expressions) are represented by process proxies, the
    pipes which interconnect two process proxies are represented by pipe objects. The
    pipe may be either an OSPipe (a proxy representing a Unix system FIFO pipe) or an
    InternalPipe (a Smalltalk object which behaves similarly to an OSPipe). The combination
    of process proxies and pipes is a command pipeline, which may be created and
    evaluated from a command line expression using conventional Unix shell syntax.
</ul>
<h3>Command Line Syntax</h4>
    A command or command pipeline may be created from a string expression, and
    evaluated using Unix shell syntax. CommandShell accepts command line strings and
    does some high level processing to set up process proxy execution. For most of the
    command parsing, it relies on a ShellSyntax object to do the syntax evaluation.
    In particular, a real Unix shell interprets command line parameters in the context of the
    Unix file system, expanding "wildcard" characters and searching for files in the context
    of a "current working directory" location in the file system tree. A CommandShell,
    collaborating with an instance of ShellSyntax, implements this syntax parsing
    and evaluation in Smalltalk.

<h3>Command Execution</h4>
    Beginning with a command line (which may represent a pipeline of several
    commands), a CommandShell first attempts to treat the entire command line as
    a Smalltalk expression. The command line string is used to create an instance of
    PipeableEvaluator (a kind of process process). If the expression is successfully
    compiled and evaluated in the PipeableEvaluator, the command line is executed
    just as if it were an external Unix command, with the result of the evaluation
    written as a string to the output stream of the process proxy.
<p>
    If the complete command line cannot be treated as a Smalltalk expression,
    CommandShell assumes that it must be a Unix style command pipeline. If the
    command line is a comment (starting with ''#'') it is discarded; otherwise it
    is broken down into a series of process proxies connected by pipes, with
    command line parameters and other aspects of the command line parsing handled
    by a ShellSyntax object.
<p>
    The process proxies in the command pipeline may represent internal or external
    commands. CommandShell parses the command line to create the proxies by breaking
    the command pipeline into segments (separated by the "|" pipe character), with
    different kinds of process proxy created according to the following priorities:
<ul><li>
      If the command segment is a simple Smalltalk expression terminated by "!!", it
      is treated as a "doIt" expression, evaluated in a PipeableEvaluator proxy. This
      kind of simple doIt expression is limited to commands with characters which
      are unambiguous in a shell command. For example, "|" has special meaning in
      a command line, and cannot be used in a doIt expression (command line quoting
      and escape characters have not yet been implemented in the CommandShell syntax).
<li>
      If the command segment is not a doIt expression, CommandShell checks to see
      if it matches one of several "shell builtin" commands. These are special commands
      implemented in class ShellBuiltin and evaluated in a PipeableEvaluator proxy.
      They behave analogously to shell builtin commands in a conventional Unix shell.
      A number of commands such as "cd" and "pwd" are implemented as internal builtin
      commands, rather than relying on Unix external equivalents. In addition, other
      builtin commands such as "edit" do things which are useful in Squeak and have
      no real equivalent in Unix (the "edit" builtin opens an editor within Squeak, taking
      its input from files or directly from the output of a command pipeline such as
      "Smalltalk !! | edit" or "who | edit").
<li>
      If the command segment is not a shell builtin command, it is assumed to be an
      external command. It this case, the command line segment is fully parsed, then
      used to create an external OS process proxy to run the external command. The
      external process proxy responds to a #value message by running the external
      program, with output and error written to pipes connected to the command
      pipeline.
<li>
      Finally, if no external program can be found to execute the command, an error
      message is provided to the command window, and no command is evaluated.
</ul>
    Once the command proxy pipeline has been created, the individual process proxies
    are evaluated in such a way that they appear to execute in parallel, with each
    proxy reading its input from a pipe connected to its predecessor in the pipeline,
    and writing its output to a pipe connected to its successor in the pipeline. An
    additional error pipe is shared by all process proxies in the pipeline, such that
    any error output is accumulated in the shared error pipe stream.
<p>
    A command shell can obtain the output and error of a complex command pipeline
    simply by evaluating the last process proxy in the chain, and reading up to the
    end of its output and error pipes. Since a process proxy knows its run state, and
    a pipe is not "at end" until a process proxy closes one end of the pipe, the pipeline
    can be constructed in such a way that the command shell is assured that all process
    proxies have completed their evaluation when the output of the last proxy is read
    up to the end of the pipe.
<p>
    As the last process proxy in a command pipeline is evaluated, CommandShell reads
    its output and error pipes, and displays the text in the View or Morph which it uses
    as its terminal window. When complete, it issues a new prompt string, and waits for
    another command line to be entered by the user.
<p>
<h3>Exercise for the Reader:</h4>
Which one of the following five command lines will generate
an error, and why?
<ol><li>
  $ stdout nextPutAll: ''hello world''
<li>
  $ stdout nextPutAll: ''hello world''; cr
<li>
  $ stdout nextPutAll: ''hello world''!!
<li>
  $ stdout nextPutAll: ''hello world''; cr!!
<li>
  $ stdout nextPutAll: ''hello world''!!; stdout cr!!
</ol>
<h3>Answer:</h4>
The fourth command will generate an error.
<ul><li>
  Line one is evaluated as a complete Smalltalk expression, and succeeds.
<li>
  Line two is evaluated as a complete Smalltalk expression, and succeeds.
<li>
  Line three is evaluated as a pipeline after failing evaluation as a complete Smalltalk
  expression. It succeeds as a pipeline with one internal doIt proxy, and produces
  the same output as line one.
<li>
  Line four cannot be evaluated as a complete Smalltalk expression. The ";" token
  causes the command line to be evaluated as two pipelines. The expression for the
  first pipeline does not have a trailing "!!" token, so it is assumed to be an external
  command, and fails. The second pipeline is evaluated as a doIt on the string ''cr!!'',
  which fails as an invalid Smalltalk expression. The error messages for both failures
  are accumulated on the shared error pipe, and are displayed in the terminal window.
<li>
  Line five is evaluated successfully as two pipelines, each consisting of one doIt
  proxy. The output is the same as for line two.
</ul></body></html>
'! !

!CommandShell class methodsFor: 'documentation' stamp: 'dtl 12/1/2001 18:51'!
overview
	"A general overview"

	"CommandShell new pipeline: 'CommandShell overview!! | edit'"

	| rs ws |
	rs := ReadStream on: self htmlOverview.
	ws := WriteStream on: String new.
	[rs atEnd]
		whileFalse:
			[ws nextPutAll: (rs upTo: $<).
			rs upTo: $>].
	^ ws contents
! !

!CommandShell class methodsFor: 'documentation' stamp: 'dtl 12/15/2007 12:25'!
raceConditions

	"CommandShell new pipeline: 'CommandShell raceConditions!! | edit'"

	^
'It may be possible to hang the Squeak VM in an IO race condition when doing certain command pipelines. These conditions have been largely eliminated for Unix platforms through the use of nonblocking pipes in conjunction with asynchronous IO or polling processes on the Smalltalk side of the pipes. However, these notes are provided to describe possible deadlock scenarios.

Note that nonblocking OS pipes are not yet available on Windows. Command pipelines with external OS processes on Windows are not supported. Blocking on read or write to an OSPipe in Windows will definitely lock the VM.

Two kinds of deadlock are possible. In both cases, deadlock occurs when the single-threaded Squeak VM is blocked on a read or write to an OS pipe, and the blocked condition can only be cleared by another process running in the blocked VM.

1) Block on write. The Squeak VM can block on a write to an OS pipe if the external process at the other end of the pipe does not keep up with reading it. One internal process proxy writes on an pipe to an external process proxy, and fills the pipe up to some capacity limit, after which the write blocks. The external proxy is writing its output to another internal process proxy in the command pipeline, which never executes because the VM is still blocked trying to write to the full pipe.

2) Block on read. The Squeak VM can block on a read from an OS pipe if the external process writing to the pipe never closes the pipe. The internal proxy will post a read on the output pipe from the external command. If the external command has exited, the read will return with a (possibly empty) string. However, if the external command either does not exit, or exits without Squeak being notified, the read on the output pipe will block indefinitely.

2a) In the case where the external command exits while the Squeak VM is blocked on a read, Squeak is unable to respond to the notification of the external process exiting. The process stays in a zombie state, the pipes therefore never get closed, and the VM stays in a blocked condition.

Here are things to try if a deadlock occurs:

Squeak will be blocked and will not respond to the mouse or keyboard. Open a command shell outside of Squeak (perhaps an xterm, or log in to another virtual terminal on Linux or FreeBSD). Using the "ps" command, find the Squeak VM process and its subprocesses. Kill the subprocess. In many cases this will free up the deadlock, and Squeak will come back to life. If this does not work, then you will probably find that one of the processes which you just killed is now in a "zombie" state, which means that the Squeak VM is deadlocked in such a way that it cannot recognize that its child process exited (and therefore cannot properly close the associated file handles). In this case, if your operating system supports a /proc file system, you may be able to break things free by emptying the pipes. On Linux, go to /proc/<pidOfTheSqueakVMProcess>/fd/ and do "cat" commands on all the pipe files in this directory. If none of this works, you are just plain stuck, and you will need to kill your Squeak session and recover anything valuable from the changes log.'! !

!CommandShell class methodsFor: 'compatibility' stamp: 'dtl 1/15/2018 20:51:19'!
defaultPathString

	^ self useFileMan
		ifTrue: [((Smalltalk at: #DirectoryEntry) perform: #currentDirectory) printString]
		ifFalse: [self useFileSystem
			ifTrue: [(((Smalltalk at: #Path) perform: #workingDirectory) perform: #asFileReference) pathString]
			ifFalse: [(Smalltalk at: #FileDirectory) default pathName]]
! !

!CommandShell class methodsFor: 'compatibility' stamp: 'dtl 2/8/2019 23:01'!
deleteFileNamed: fileName
	"Delete the file with the given name."
	
	self useFileMan
		ifTrue: [((Smalltalk at: #FileEntry) perform: #withPathName: with: fileName) delete]
		ifFalse: [self useFileSystem
			ifTrue: [ | file sel |
				file := fileName perform: #asFileReference.
				(sel := {#ensureDelete . #ensureDeleted . #delete}
					detect: [ :e | file respondsTo: e ]
					ifNone: [ self error: 'do not know how to ensureDelete' ]) notNil
						ifTrue: [ file perform: sel ].
				(file respondsTo: #ensureDelete)
					ifTrue: [ file perform: #ensureDelete ]
					ifFalse: [ file perform: #ensureDeleted ] ]
			ifFalse:
				[ (Smalltalk at: #FileDirectory) default deleteFileNamed: fileName ] ]! !

!CommandShell class methodsFor: 'compatibility' stamp: 'dtl 2/8/2019 23:02'!
directoryExists: path
	"Answer true if a directory of the given name exists. The given name may
	be either a full path name or a local directory within this directory."

	^ self useFileMan
		ifTrue: [((Smalltalk at: #DirectoryEntry) perform: #withPathName: with: path) exists]
		ifFalse: [self useFileSystem
			ifTrue: [ (path perform: #asFileReference) exists ]
			ifFalse: [ (Smalltalk at: #FileDirectory) default directoryExists: path ]]
! !

!CommandShell class methodsFor: 'compatibility' stamp: 'dtl 2/8/2019 23:02'!
fileExists: path
	"Answer true if a file of the given name exists. The given name may be
	either a full path name or a local file within this directory."

	^ self useFileMan
		ifTrue: [((Smalltalk at: #FileEntry) perform: #withPathName: with: path) exists]
		ifFalse: [self useFileSystem
			ifTrue: [ (path perform: #asFileReference) exists ]
			ifFalse: [ (Smalltalk at: #FileDirectory) default fileExists: path ]]
! !

!CommandShell class methodsFor: 'compatibility' stamp: 'dtl 5/2/2020 16:21'!
fileNamed: path
	^ self useFileMan
		ifTrue: [ | entry |
			entry := ((Smalltalk at: #FileEntry) perform: #withPathName: with: path) assureExistence.
			entry fileAccessor privateWriteableFile: entry]
		ifFalse: [ FileStream fileNamed: path ]
! !

!CommandShell class methodsFor: 'compatibility' stamp: 'dtl 5/2/2020 16:53'!
oldFileNamed: path
	^ self useFileMan
		ifTrue: [ | entry |
			entry := (Smalltalk at: #FileEntry) perform: #withPathName: with: path.
			entry fileAccessor privateWriteableFile: entry]
		ifFalse: [ FileStream fileNamed: path ]
! !

!CommandShell class methodsFor: 'compatibility' stamp: 'dtl 1/15/2018 09:04:06'!
pathSeparator

	^ self useFileMan
		ifTrue: [(Smalltalk at: #FileIOAccessor) default slash]
		ifFalse: [self useFileSystem
			ifTrue: [((Smalltalk at: #DiskStore) current perform: #delimiter) asString]
			ifFalse: [(Smalltalk at: #FileDirectory) slash]]
! !

!CommandShell class methodsFor: 'compatibility' stamp: 'dtl 5/2/2020 17:04'!
readOnlyFileNamed: path
	^ self useFileMan
		ifTrue: [ (path perform: #asFileEntry) readStream ]
		ifFalse: [ FileStream readOnlyFileNamed: path ]
! !

!CommandShell class methodsFor: 'defaults' stamp: 'dtl 4/11/2018 21:12'!
defaultWindowName

	^ 'Command Shell'! !

!CommandShell class methodsFor: 'version dependent' stamp: 'ThierryGoubier 7/27/2017 22:44'!
deleteFileNamed: fileName inDirectory: directoryOrFileReference
	"Delete the file with the given name in the given directory."

	^ self useFileSystem
		ifTrue: [ | f |
			(f := directoryOrFileReference files
				detect: [ :e | e basename = fileName ]
				ifNone: [  ]) notNil
				ifTrue: [ f delete ] ]
		ifFalse: [ directoryOrFileReference deleteFileNamed: fileName ]! !

!CommandShell class methodsFor: 'version dependent' stamp: 'dtl 4/26/2020 12:40'!
dirEntryInPath: fullPath name: localName
	"Answer an object corresponding to localName in fullPath that responds to #isDirectory"

	self useFileMan
		ifTrue: [ [ :dirEntry | (dirEntry exists and: [ dirEntry pathComponents last = localName ])
					ifTrue: [^ dirEntry]
					ifFalse: [^ nil] ]
						value: ((Smalltalk at: #DirectoryEntry) perform: #withPathName: with: fullPath) ]
		ifFalse: [ self useFileSystem
			ifTrue: [^ ((self dirPathFor: fullPath) perform: #asFileReference) entries
							detect: [:e | e basename = localName] ifNone: [nil]]
			ifFalse: [^ ((Smalltalk at: #FileDirectory) on: (CommandShell dirPathFor: fullPath)) entries
							detect: [:e | e name = localName] ifNone: [nil]] ]! !

!CommandShell class methodsFor: 'version dependent' stamp: 'dtl 1/27/2013 17:59'!
dirPathFor: path
	"Return the directory part the given name."

	^ self useFileSystem
		ifTrue: [ (path perform: #asFileReference) parent fullName ]
		ifFalse: [(Smalltalk at: #FileDirectory) perform: #dirPathFor: with: path]
! !

!CommandShell class methodsFor: 'version dependent' stamp: 'dtl 4/26/2020 12:14'!
directoryEntryNames: path

	^  self useFileMan
		ifTrue: [ ((Smalltalk at: #DirectoryEntry) perform: #withPathName:  with: path) children collect: [ :e | e name] ]
		ifFalse: [ self useFileSystem
			ifTrue: [ (path perform: #asFileReference) children collect: [:e | e perform: #basename] ]
			ifFalse: [ ((Smalltalk at: #FileDirectory) on: path) entries collect: [:e | e name] ] ]

! !

!CommandShell class methodsFor: 'version dependent' stamp: 'dtl 1/27/2013 22:31'!
directoryForPath: path

	^ self useFileSystem
		ifTrue: [path perform: #asFileReference]
		ifFalse: [(Smalltalk at: #FileDirectory) on: path]
! !

!CommandShell class methodsFor: 'version dependent' stamp: 'dtl 4/25/2020 19:08'!
directoryNamesInPath: path

	^ self useFileMan
			ifTrue: [((Smalltalk at: #DirectoryEntry) perform: #withPathName:  with: path) directoryNames]
			ifFalse: [ self useFileSystem
				ifTrue: [ (path perform: #asFileReference) children	
							select: [:e | e isDirectory ]
							thenCollect: [:e | e perform: #basename] ]
				ifFalse: [ ((Smalltalk at: #FileDirectory) on: path) entries
							select: [:e | e isDirectory ]
							thenCollect: [:e | e name] ] ]
! !

!CommandShell class methodsFor: 'version dependent' stamp: 'dtl 1/28/2013 20:12'!
entryName: directoryEntry
	"Answer the name of a directory entry."

	^ self useFileSystem
		ifTrue: [ directoryEntry basename ]
		ifFalse: [ directoryEntry name ]
! !

!CommandShell class methodsFor: 'version dependent' stamp: 'dtl 4/29/2020 20:18'!
fileExists: fileName inDirectory: directoryOrFileReference
	"Answer true if a file of the given name exists in this directory."

	^ self useFileMan
		ifTrue: [ directoryOrFileReference pathName asDirectoryEntry fileNames includes: fileName ]
		ifFalse: [ self useFileSystem
			ifTrue: [ (directoryOrFileReference entries
						detect: [:e | e basename = fileName] ifNone: []) notNil ]
			ifFalse: [ directoryOrFileReference fileExists: fileName ] ]
! !

!CommandShell class methodsFor: 'version dependent' stamp: 'dtl 1/27/2013 17:58'!
fileExists: fileName inPath: path
	"Answer true if a file of the given name exists in the directory named by path."

	^ self useFileSystem
		ifTrue: [ self fileExists: fileName inDirectory: (path perform: #asFileReference) ]
		ifFalse: [ self fileExists: fileName inDirectory: ((Smalltalk at: #FileDirectory) on: path) ]
! !

!CommandShell class methodsFor: 'version dependent' stamp: 'ThierryGoubier 7/27/2017 22:45'!
fileNamed: fileName inDirectory: directoryOrFileReference
	"Open the file with the given name in this directory for writing."

	^ self useFileSystem
		ifTrue: [ | f |
			(f := directoryOrFileReference files
				detect: [ :e | e basename = fileName ]
				ifNone: [  ]) notNil
				ifTrue: [ f writeStream ] ]
		ifFalse: [ directoryOrFileReference fileNamed: fileName ]! !

!CommandShell class methodsFor: 'version dependent' stamp: 'dtl 1/27/2013 17:56'!
fullNameFor: fileName
	"Return a corrected, fully-qualified name for the given file name."

	^ self useFileSystem
		ifTrue: [ (fileName perform: #asFileReference) perform: #fullName ]
		ifFalse: [ (Smalltalk at: #FileDirectory) default fullNameFor: fileName ]
! !

!CommandShell class methodsFor: 'version dependent' stamp: 'dtl 1/27/2013 17:55'!
localNameFor: path
	"Return the local part the given name."

	^ self useFileSystem
		ifTrue: [ (path perform: #asFileReference) perform: #basename ]
		ifFalse: [(Smalltalk at: #FileDirectory) perform: #localNameFor: with: path]
! !

!CommandShell class methodsFor: 'version dependent' stamp: 'SeanDeNigris 2/13/2013 09:46'!
pathNameDelimiter

	^ self useFileSystem
		ifTrue: [(Smalltalk at: #DiskStore) current perform: #delimiter]
		ifFalse: [(Smalltalk at: #FileDirectory) pathNameDelimiter]
! !

!CommandShell class methodsFor: 'version dependent' stamp: 'dtl 1/27/2013 18:17'!
pathNameForDirectory: directoryOrFileReference
	"Return the full name of this directory."

	^ self useFileSystem
		ifTrue: [directoryOrFileReference fullName]
		ifFalse: [ directoryOrFileReference pathName ]
! !

!CommandShell class methodsFor: 'version dependent' stamp: 'dtl 1/15/2018 08:33:37'!
useFileMan
	"If true use FileMan for directory and file access. See senders for methods with file
	system dependencies."

	^ Smalltalk hasClassNamed: #FileIOAccessor! !

!CommandShell class methodsFor: 'version dependent' stamp: 'dtl 1/26/2013 15:38'!
useFileSystem
	"If true use FileSystem, otherwise use traditional FileDirectory. See senders
	for methods with file system dependencies."

	^ Smalltalk hasClassNamed: #FileReference! !

!CommandShell class methodsFor: 'version dependent' stamp: 'dtl 1/29/2013 20:40'!
withBlanksTrimmed: aString

	^ (aString respondsTo: #withBlanksTrimmed)
		ifFalse: [aString perform: #trimBoth "Pharo"]
		ifTrue: [aString perform: #withBlanksTrimmed]
! !

!CommandShell class methodsFor: 'class initialization' stamp: 'dtl 4/11/2018 21:11'!
initialize

	"CommandShell initialize"

	| color |
	(Smalltalk hasClassNamed: #WindowColorSpec)
		ifTrue:
			[ color := Color colorFrom: self windowColorSpecification pastelColor.
			self setWindowColorFor: self to: color].
	ShellSyntax new isPharo5Update50558AndLater
		ifFalse: [ Smalltalk addToStartUpList: self ]
		ifTrue:
			[ (Smalltalk at: #SessionManager) default
				perform: #registerToolClassNamed:
				with: ThisOSProcess name ].
	Smalltalk
		at: #TheWorldMenu
		ifPresent:
			[ :class | 
			class class methodDict
				at: #registerOpenCommand:
				ifPresent:
					[ :method | 
					(method hasLiteral: #deprecated:)
						ifTrue:
							[  ]
						ifFalse:
							[ class
								unregisterOpenCommand: 'Squeak Shell';	"if previously registered"
								unregisterOpenCommand: 'Command Shell';	"if previously registered"
								registerOpenCommand:
									{'Command Shell'.
									{CommandShell.
									#open}} ]	"n.b.  use #hasLiteral: rather than #sendsSelector: for Squeak 3.8"	"Pharo issues deprecation and tells you to do it their way. Ignore the warning." ] ]! !

!CommandShell class methodsFor: 'class initialization' stamp: 'dtl 4/8/2020 10:00'!
setWindowColorFor: aClass to: color

	(Smalltalk hasClassNamed: #UserInterfaceTheme)
		ifTrue: [ (Smalltalk at: #UserInterfaceTheme) current
					set: #customWindowColor for: aClass to: color]
		ifFalse: [ (Smalltalk hasClassNamed: #Preferences)
			ifTrue: [ | preferencesClass |
				preferencesClass := Smalltalk at: #Preferences.
				(preferencesClass respondsTo: #setWindowColorFor:to:)
					ifTrue: [ (Smalltalk hasClassNamed: #WindowColorRegistry)
						ifTrue: [ (Smalltalk at: #WindowColorRegistry)
									perform: #registerColorSpecification:toClassNamed:
									with: aClass windowColorSpecification
									with: aClass name.
								 preferencesClass setWindowColorFor: aClass name to: color ] ]
					ifFalse: [ "Pharo deprecates Preference in favor of pragma registration mechanism" ] ] ].

! !

!CommandShell class methodsFor: 'class initialization' stamp: 'dtl 2/3/2012 22:06'!
unload
	Smalltalk at: #TheWorldMenu ifPresent: [ :class |
		class class methodDict at: #unregisterOpenCommandWithReceiver: ifPresent: [ :method |
			(method hasLiteral: #deprecated:) "n.b.  use #hasLiteral: rather than #sendsSelector: for Squeak 3.8"
				ifFalse: [ class unregisterOpenCommandWithReceiver: self ] ] ]! !

!CommandShell class methodsFor: 'version testing' stamp: 'dtl 6/29/2010 21:06'!
isMorphic
	"Squeak traditionally used #isMorphic to distinguish between Morphic
	and MVC user interfaces. In newer Squeak images, the current project
	knows its active user interface, so requests are vectored through the
	current project. Pharo images pretend to be unaware of the fact that
	they are running Morphic, refusing to respond to #isMorphic. This 
	implementation does reasonable things in any of the above scenarios."

	^(Smalltalk respondsTo: #isMorphic) not or: [Smalltalk isMorphic]! !

!CommandShell class methodsFor: 'version testing' stamp: 'dtl 5/2/2020 17:55'!
versionString

	"CommandShell versionString"

	^ '4.7.10'! !

!CommandShell class methodsFor: 'VM building' stamp: 'dtl 1/25/2013 19:08'!
makeVmIn: buildDirectoryPathName
	"Rebuild the virtual machine and plugins in the buildDirectoryPathName
	directory. If the build is successful, save the image and restart using the
	new VM. This assumes that the currently executing VM is either located in,
	or linked to, the buildDirectoryPathName directory."

	"CommandShell makeVmIn: CommandShell defaultPathString, CommandShell pathSeparator, 'build'"

	| shell |
	shell := self new.
	shell open.
	^ shell makeVmIn: buildDirectoryPathName
! !

!CommandShell class methodsFor: 'proxy creation' stamp: 'dtl 12/31/2007 14:51'!
pipeableProxyFor: commandString 
	"Create a new proxy for a PipeJunction. The proxy may be any type
	of PipeJunction, such as a PipeableOSProcess or ExpressionEvaluator.
	Send #value to evaluate the newly created proxy."

	"(CommandShell pipeableProxyFor: 'ls -l') value upToEndOfFile"
	"(CommandShell pipeableProxyFor: 'Array new: 4 !!') value upToEndOfFile"
	"(CommandShell pipeableProxyFor: 'help') value upToEndOfFile"

	^ self new
		pipeableProxyFor: commandString
		input: nil
		output: nil
		error: nil
		predecessorProxy: nil! !

!CommandShell class methodsFor: 'proxy creation' stamp: 'dtl 12/31/2007 14:55'!
pipeline: aCommand
	"Find the individual commands in a command pipeline string, and evaluate
	them as a command pipeline. Answer a ProxyPipeline collection of processes
	in the pipeline."

	"(CommandShell pipeline: 'ps | grep ps | wc') upToEndOfFile"
	"(CommandShell pipeline: 'ls NOSUCHFILE * | dd | cat') errorUpToEndOfFile"
	"(CommandShell pipeline: 'ls NOSUCHFILE * | dd | cat') upToEndOfFile"

	^ self new pipeline: aCommand
! !

!CommandShell class methodsFor: 'window color' stamp: 'dtl 4/11/2018 21:12'!
windowColorSpecification
	"Answer a WindowColorSpec object that declares my preference"

	| windowColorSpec |
	windowColorSpec := Smalltalk
				at: #WindowColorSpec
				ifAbsent: [^ self error: 'this image does not support WindowColorSpec'].
	^ windowColorSpec
		classSymbol: self name
		wording: 'Command Shell'
		brightColor: (Color lightGray lighter paler)
		pastelColor: (Color lightGray lighter lighter paler paler)
		helpMessage: 'CommandShell window for evaluating Smalltalk and OS commands'! !

!CrLfFileEditor methodsFor: 'private' stamp: 'ThierryGoubier 9/20/2013 15:14'!
bogusTruncate: fileStream
	"Truncate the file by brute force if FileStream>>truncate is not supported on
	this system. Note that this does not preserve file permissions."

	| name |
	name := fileStream name.
	fileStream close.
	CommandShell deleteFileNamed: name inDirectory: directory.
	^ (Smalltalk at: #CrLfFileStream) fileNamed: name
! !

!CrLfFileEditor methodsFor: 'private' stamp: 'dtl 6/29/2001 23:21'!
forceDirtyBuffer
	"This will force the view to behave as if it had been edited. Call this to
	enable a file save even if the text has not actually been edited by the
	user."

	| controller |
	controller := self dependents
			detect: [:e | e respondsTo: #hasUnacceptedEdits:]
			ifNone:
				[self dependents
					collect: [:d | d controller]
					thenSelect: [:c | c respondsTo: #hasUnacceptedEdits:]].
	controller hasUnacceptedEdits: true.
! !

!CrLfFileEditor methodsFor: 'private' stamp: 'ThierryGoubier 9/20/2013 15:16'!
getAnotherFileName: initialFileName

	| choice newFileName |
	choice := ((Smalltalk at: #PopUpMenu)
		labels: 'choose another name\cancel' withCRs)
		startUpWithCaption: initialFileName.
	choice = 1
		ifTrue: [newFileName := (Smalltalk at: #FillInTheBlank)
									request: 'Enter a new file name'
									initialAnswer: initialFileName.
				newFileName := (CommandShell fileExists: newFileName inDirectory: directory)
					ifTrue: [self getFileName: newFileName]
					ifFalse: [newFileName].
				^ newFileName].
	^ nil! !

!CrLfFileEditor methodsFor: 'private' stamp: 'ThierryGoubier 9/20/2013 15:16'!
getFileName: initialFileName

	| choice newFileName |
	choice := ((Smalltalk at: #PopUpMenu)
		labels: 'overwrite that file\choose another name\cancel' withCRs)
		startUpWithCaption: initialFileName, ' already exists.'.
	choice = 1
		ifTrue: [^ initialFileName].
	choice = 2
		ifTrue: [newFileName := (Smalltalk at: #FillInTheBlank)
									request: 'Enter a new file name'
									initialAnswer: initialFileName.
				newFileName := (CommandShell fileExists: newFileName inDirectory: directory)
					ifTrue: [self getFileName: newFileName]
					ifFalse: [newFileName].
				^ newFileName].
	^ nil! !

!CrLfFileEditor methodsFor: 'private' stamp: 'dtl 5/20/2001 14:25'!
hexFormat: aString

	"CrLfFileEditor new hexFormat: 'this is a test of the HEX string reformat method'"

	| s |
	s := WriteStream on: (String new: aString size*4).
	0 to: aString size-1 by: 16 do:
		[:loc | s nextPutAll: loc hex; space;
			nextPut: $(; print: loc; nextPut: $); space; tab.
		loc+1 to: (loc+16 min: aString size) do: [:i | s nextPutAll: (aString at: i) hex; space].
		s cr].
	^ s contents.
! !

!CrLfFileEditor methodsFor: 'private' stamp: 'dtl 10/13/2017 21:02'!
updateFilePathWith: aPathString

	CommandShell useFileSystem
		ifTrue: [
			self fileName: (CommandShell localNameFor: aPathString).
			self directory: (CommandShell directoryForPath: aPathString) ]
		ifFalse: [ | fdClass | fdClass := Smalltalk at: #FileDirectory.
			fdClass splitName: aPathString to: [ :dir :file |
				self fileName: file.
				self directory: (fdClass on: dir) ]].
	self changed: #relabel
! !

!CrLfFileEditor methodsFor: 'menus' stamp: 'dtl 1/27/2013 17:53'!
browseChanges
	"Browse in fileIn format."

	| fs |
	fs :=  CommandShell fileNamed: fileName inDirectory: directory.
	ChangeList browseStream: fs.
	fs close
! !

!CrLfFileEditor methodsFor: 'menus' stamp: 'dtl 6/29/2010 21:08'!
controllerForAccept
	"Find the controller or morph which expects the #accept message"

	| controller view |
	CommandShell isMorphic
		ifTrue:
			[controller := dependents detect: [:e | e respondsTo: #accept] ifNone: [nil]]
		ifFalse:
			[view := dependents detect: [:e | e controller respondsTo: #accept] ifNone: [nil].
			controller := view isNil
				ifTrue: [nil]
				ifFalse: [view controller]].
	^ controller! !

!CrLfFileEditor methodsFor: 'menus' stamp: 'dtl 6/29/2010 21:09'!
exit

	self changed: #accept.
	CommandShell isMorphic
		ifTrue:
			[dependents do: [:d | (d respondsTo: #closeBoxHit) ifTrue: [d closeBoxHit]]]
		ifFalse:
			[dependents first controller closeAndUnschedule]! !

!CrLfFileEditor methodsFor: 'menus' stamp: 'dtl 5/20/2001 12:46'!
getHex

	Cursor read showWhile:
		[self viewStyle: #hex.
		self changed: #contents]
! !

!CrLfFileEditor methodsFor: 'menus' stamp: 'dtl 5/20/2001 14:01'!
getText

	Cursor read showWhile:
		[self viewStyle: #text.
		self changed: #contents]
! !

!CrLfFileEditor methodsFor: 'menus' stamp: 'dtl 6/29/2001 23:22'!
save

	| controller |
	self forceDirtyBuffer.
	controller := self controllerForAccept.
	controller ifNotNil: [controller accept]
! !

!CrLfFileEditor methodsFor: 'menus' stamp: 'ThierryGoubier 9/20/2013 15:17'!
saveAs

	| oldFilePath newFilePath controller |
	oldFilePath := self currentFilePathName.
	newFilePath := (Smalltalk at: #FillInTheBlank)
					request: 'Enter a new file name'
					initialAnswer: oldFilePath.
	newFilePath isEmpty
		ifFalse:
			[self updateFilePathWith: newFilePath.
			controller := self controllerForAccept.
			controller ifNotNil:
				[self forceDirtyBuffer.
				controller accept]]

! !

!CrLfFileEditor methodsFor: 'menus' stamp: 'dtl 5/20/2001 19:39'!
selectedClassOrMetaClass
	"For support of the pretty printer menu option"

	^ self class! !

!CrLfFileEditor methodsFor: 'menus' stamp: 'dtl 5/20/2001 19:37'!
selectedMessageCategoryName
	"For support of the pretty printer menu option"

	^ '-- all --'! !

!CrLfFileEditor methodsFor: 'model access' stamp: 'dtl 1/26/2013 12:29'!
contents

	^ viewStyle == #hex
		ifTrue: [self hexFormat: contents]
		ifFalse: [contents]
! !

!CrLfFileEditor methodsFor: 'model access' stamp: 'ThierryGoubier 6/25/2015 22:26'!
contents: aString
	viewStyle == #hex
		ifTrue: [ self inform: 'cannot update in hex mode' ]
		ifFalse: [ contents := aString	"asString" ]! !

!CrLfFileEditor methodsFor: 'model access' stamp: 'dtl 10/13/2017 20:33'!
currentFilePathName

	^ (CommandShell dirPathFor: directory pathName), CommandShell pathSeparator, fileName! !

!CrLfFileEditor methodsFor: 'model access' stamp: 'dtl 4/8/2020 10:38'!
defaultWindowColor
	^ Color lightOrange
! !

!CrLfFileEditor methodsFor: 'model access' stamp: 'ThierryGoubier 9/20/2013 15:17'!
fileContentsMenu: aMenu shifted: shifted

| shiftMenu |
^ shifted 
	ifFalse: [aMenu 
		labels: 
'save
save as...
exit
view as hex
view as text
browse changes
find...(f)
find again (g)
set search string (h)
do again (j)
undo (z)
copy (c)
cut (x)
paste (v)
paste...
do it (d)
print it (p)
inspect it (i)
fileIn selection
accept (s)
cancel (l)
more...' 
		lines: #(3 6 9 11 15 19 21)
		selections: #(save saveAs exit getHex getText browseChanges
find findAgain setSearchString
again undo
copySelection cut paste pasteRecent
doIt printIt inspectIt fileItIn
accept cancel
shiftedYellowButtonActivity)]

	ifTrue: [shiftMenu := (Smalltalk at: #ParagraphEditor) shiftedYellowButtonMenu.
		aMenu 
			labels: shiftMenu labelString 
			lines: shiftMenu lineArray
			selections: shiftMenu selections]

! !

!CrLfFileEditor methodsFor: 'model access' stamp: 'dtl 5/26/2001 18:23'!
getSelection

	^ 1 to: 0  "null selection"! !

!CrLfFileEditor methodsFor: 'model access' stamp: 'dtl 10/13/2017 20:29'!
labelString
	"For views to use as labels"

	^ self currentFilePathName! !

!CrLfFileEditor methodsFor: 'model access' stamp: 'dtl 10/13/2017 21:25'!
put: aText 

	| str newFileName fs |
	viewStyle == #hex
		ifTrue: [self inform: 'cannot save file in hex mode'.
				^ false].
	str := aText asString.
	self contents: str.
	(CommandShell fileExists: fileName inDirectory: directory)
		ifTrue: [newFileName := self
					getFileName: (CommandShell pathNameForDirectory: directory),
						CommandShell pathSeparator , fileName.]
		ifFalse: [newFileName := (CommandShell pathNameForDirectory: directory),
						CommandShell pathSeparator , fileName].
	newFileName ifNil: [^ false].
	fs := (Smalltalk at: #CrLfFileStream ifAbsent: [ FileStream ]) fileNamed: newFileName.
	[fs isNil] whileTrue:
		[self inform: 'cannot write file'.
		newFileName := self getAnotherFileName: newFileName.
		newFileName isNil
			ifTrue:
				[self inform: 'file not written'.
				^ false]
			ifFalse:
				[fs := (Smalltalk at: #CrLfFileStream )fileNamed: newFileName]].
	(str size < fs size)
		ifTrue:
			[(fs respondsTo: #truncate)
				ifTrue:
					[[fs truncate]
						on: Error
						do: [:ex | fs := self bogusTruncate: fs]]
				ifFalse: [fs := self bogusTruncate: fs]].
	fs nextPutAll: str.
	fs close.
	self updateFilePathWith: newFileName.
	^ true! !

!CrLfFileEditor methodsFor: 'accessing' stamp: 'ThierryGoubier 6/25/2015 22:27'!
contentsSelection
	"Return the interval of text in the code pane to select when I set the pane's contents"

	^ 1 to: 0  "null selection"! !

!CrLfFileEditor methodsFor: 'accessing' stamp: 'dtl 5/19/2001 17:40'!
directory: aDirectory

	directory := aDirectory! !

!CrLfFileEditor methodsFor: 'accessing' stamp: 'dtl 5/19/2001 17:01'!
fileName: aString

	fileName := aString! !

!CrLfFileEditor methodsFor: 'accessing' stamp: 'dtl 5/19/2001 17:01'!
lineEndConvention: aSymbol
	"See CrLfFileStream for the allowable values of aSymbol."

	lineEndConvention := aSymbol! !

!CrLfFileEditor methodsFor: 'accessing' stamp: 'dtl 5/20/2001 12:45'!
viewStyle: aSymbol
	"#text or #hex"

	viewStyle := aSymbol! !

!CrLfFileEditor methodsFor: 'initialize-release' stamp: 'dtl 12/13/2007 20:57'!
defaultFont
	"A fixed width font suitable for displaying output of shell command lines"

	^ StrikeFont familyName: 'Atlanta' size: 11 emphasized: 0! !

!CrLfFileEditor methodsFor: 'initialize-release' stamp: 'ThierryGoubier 9/20/2013 15:18'!
mvcWithLabel: aLabelString
	| topView controllerClass fileContentsView |
	CommandShell isMorphic
		ifTrue: [ ^ self error: 'this method should be used only for MVC' ].
	topView := (Smalltalk at: #StandardSystemView) new.
	controllerClass := Smalltalk
		at: #DeferredActionStandardSystemController
		ifAbsent: [ Smalltalk at: #StandardSystemController ].
	topView
		model: self;
		controller: controllerClass new;
		label: aLabelString;
		minimumSize: 200 @ 200.
	topView borderWidth: 1.
	fileContentsView := (Smalltalk at: #PluggableTextView)
		on: self
		text: #contents
		accept: #put:
		readSelection: #contentsSelection
		menu: #fileContentsMenu:shifted:.
	fileContentsView window: (0 @ 0 extent: 200 @ 140).
	topView addSubView: fileContentsView.
	^ topView controller! !

!CrLfFileEditor methodsFor: 'initialize-release' stamp: 'dtl 12/13/2007 20:57'!
openAsMorphLabel: aLabelString

	| window textMorph |
	textMorph := PluggableTextMorph
		on: self
		text: #contents
		accept: #put:
		readSelection: #contentsSelection menu: #fileContentsMenu:shifted:.
	textMorph font: self defaultFont.
	window := (SystemWindow labelled: aLabelString) model: self.
	window
		addMorph: textMorph
		frame: (0@0 corner: 1@1).
	^ window! !

!CrLfFileEditor methodsFor: 'initialize-release' stamp: 'dtl 6/29/2010 21:09'!
openLabel: aLabelString

	CommandShell isMorphic
		ifTrue:
			[^ (self openAsMorphLabel: aLabelString) openInWorld]
		ifFalse:
			[^ (self mvcWithLabel: aLabelString) open]
! !

!CrLfFileEditor methodsFor: 'initialize-release' stamp: 'dtl 6/29/2010 21:09'!
withLabel: aLabelString
	"Same as #openLabel: but does not open the window in MVC"

	CommandShell isMorphic
		ifTrue:
			[^ self openAsMorphLabel: aLabelString]
		ifFalse:
			[^ self mvcWithLabel: aLabelString]
! !

!CrLfFileEditor class methodsFor: 'private' stamp: 'dtl 12/15/2007 13:38'!
defaultLineEndConvention
	"FIXME: The Unix and Win32 are right, but I just guessed at the others - dtl"

	| platform |
	platform :=  ShellSyntax new platformName.
	(platform = 'unix') ifTrue: [^ #lf].
	(platform = 'Win32') ifTrue: [^ #crlf].
	(platform = 'Mac OS') ifTrue: [^ #cr].
	(platform = 'RiscOS') ifTrue: [^ #cr].
	(platform = 'OS2') ifTrue: [^ #crlf]. "FIXME: Is this the right name for OS2?"
	"Add other system types here..."
	^ #cr
! !

!CrLfFileEditor class methodsFor: 'private' stamp: 'dtl 6/29/2010 21:09'!
openForFileNamed: pathName

	"CrLfFileEditor openForFileNamed: '/etc/hosts'"
	"CrLfFileEditor openForFileNamed: '/NO/SUCH/FILE'"
	"CrLfFileEditor openForFileNamed: '/etc/NOSUCHFILE'"

	^ CommandShell isMorphic
		ifTrue: [(self fileNamed: pathName) openInWorld]
		ifFalse: [(self fileNamed: pathName) open]
! !

!CrLfFileEditor class methodsFor: 'instance creation' stamp: 'dtl 9/12/2002 10:16'!
editFileNamed: pathName

	"CrLfFileEditor editFileNamed: '/etc/hosts'"
	"CrLfFileEditor editFileNamed: '/NO/SUCH/FILE'"
	"CrLfFileEditor editFileNamed: '/etc/NOSUCHFILE)'"

	^ Cursor read showWhile: [self openForFileNamed: pathName].
! !

!CrLfFileEditor class methodsFor: 'instance creation' stamp: 'dtl 9/12/2002 11:38'!
fileNamed: pathName
	"Answer a Controller or Morph as view on an instance of myself."

	"CrLfFileEditor fileNamed: '/etc/hosts'"
	"CrLfFileEditor fileNamed: '/NO/SUCH/FILE'"
	"CrLfFileEditor fileNamed: '/etc/NOSUCHFILE'"

	^ self fileNamed: pathName withLabel: pathName
! !

!CrLfFileEditor class methodsFor: 'instance creation' stamp: 'dtl 7/1/2015 21:13'!
fileNamed: pathName inDirectoryPath: dirPath
	"Answer a Controller or Morph as view on an instance of myself."

	"CrLfFileEditor fileNamed: '/etc/hosts' inDirectoryPath: '/usr/bin'"
	"CrLfFileEditor fileNamed: 'bin/vi' inDirectoryPath: '/usr'"
	"CrLfFileEditor fileNamed: 'hosts' inDirectoryPath: '/etc'"
	"CrLfFileEditor fileNamed: 'hosts' inDirectoryPath: '/usr/bin'"
	"CrLfFileEditor fileNamed: '/NO/SUCH/FILE' inDirectoryPath: '/etc'"
	"CrLfFileEditor fileNamed: '/etc/NOSUCHFILE' inDirectoryPath: '/etc'"

	| dir fs convention editText |
	dir := CommandShell directoryForPath: dirPath.
	(dir fileExists: pathName)
		ifTrue:
			[[fs := (Smalltalk
						at: #MultiByteFileStream
						ifAbsent: [Smalltalk at: #CrLfFileStream])
							readOnlyFileNamed: dirPath, CommandShell pathSeparator, pathName.
			convention := fs detectLineEndConvention.
			editText := fs contentsOfEntireFile.
			fs close]
				on: Error
				do: [:ex |
					convention := #lf.	"Default for Unix text files"
					editText := '']]
		ifFalse:
			[convention := #lf.	"Default for Unix text files"
			editText := ''].
	^ self on: editText
		withLabel: pathName
		inDirectory: dir
		defaultFileName: pathName
		lineEndConvention: convention
! !

!CrLfFileEditor class methodsFor: 'instance creation' stamp: 'dtl 7/1/2015 21:14'!
fileNamed: pathName withLabel: windowLabel
	"Answer a Controller or Morph as view on an instance of myself."

	"CrLfFileEditor fileNamed: '/etc/hosts' withLabel: 'an editor on /etc/hosts'"

	| dirPath dir fs convention editText localName |
	dirPath := CommandShell dirPathFor: pathName.
	dir := CommandShell directoryForPath: dirPath..
	localName := CommandShell localNameFor: pathName.
	(CommandShell fileExists: localName inDirectory: dir)
		ifTrue:
			[[fs := (Smalltalk
						at: #MultiByteFileStream
						ifAbsent: [Smalltalk at: #CrLfFileStream])
							readOnlyFileNamed: pathName.
			convention := fs detectLineEndConvention.
			editText := fs contentsOfEntireFile.
			fs close]
				on: Error
				do: [:ex |
					convention := #lf.	"Default for Unix text files"
					editText := '']]
		ifFalse:
			[convention := #lf.	"Default for Unix text files"
			editText := ''].
	^ self on: editText
		withLabel: windowLabel
		inDirectory: dir
		defaultFileName: localName
		lineEndConvention: convention
! !

!CrLfFileEditor class methodsFor: 'instance creation' stamp: 'dtl 9/12/2002 10:10'!
on: aString withLabel: aLabelString inDirectory: aDirectory defaultFileName: nameString

	"(CrLfFileEditor on: 'this is the string to edit' withLabel: 'this is the window label' inDirectory: FileDirectory default defaultFileName: 'buffer.txt') openInWorld"

	^ self on: aString withLabel: aLabelString inDirectory: aDirectory defaultFileName: nameString lineEndConvention: self defaultLineEndConvention
! !

!CrLfFileEditor class methodsFor: 'instance creation' stamp: 'dtl 9/12/2002 10:09'!
on: aString withLabel: aLabelString inDirectory: aDirectory defaultFileName: nameString lineEndConvention: convention


	"(CrLfFileEditor on: 'this is the string to edit' withLabel: 'this is the window label' inDirectory: FileDirectory default defaultFileName: 'buffer.txt' lineEndConvention: #lf) openInWorld"

	| model |
	model := self new contents: aString.
	model directory: aDirectory.
	model fileName: nameString.
	model lineEndConvention: convention.
	^ model withLabel: aLabelString
! !

!CrLfFileEditor class methodsFor: 'instance creation' stamp: 'dtl 9/12/2002 10:10'!
openOn: aString withLabel: aLabelString inDirectory: aDirectory defaultFileName: nameString

	"CrLfFileEditor openOn: 'this is the string to edit' withLabel: 'this is the window label' inDirectory: FileDirectory default defaultFileName: 'buffer.txt'"

	^ self openOn: aString withLabel: aLabelString inDirectory: aDirectory defaultFileName: nameString lineEndConvention: self defaultLineEndConvention
! !

!CrLfFileEditor class methodsFor: 'instance creation' stamp: 'dtl 12/13/2007 21:08'!
openOn: aString withLabel: aLabelString inDirectory: aDirectory defaultFileName: nameString lineEndConvention: convention

	"CrLfFileEditor openOn: 'this is the string to edit' withLabel: 'this is the window label' inDirectory: FileDirectory default defaultFileName: 'buffer.txt' lineEndConvention: #lf"

	| model |
	model := self new contents: aString.
	model directory: aDirectory.
	model fileName: nameString.
	model lineEndConvention: convention.
	^ model openLabel: aLabelString
! !

!CrLfFileEditor class methodsFor: 'class initialization' stamp: 'ThierryGoubier 3/4/2018 11:35'!
initialize
	"CrLfFileEditor initialize"

	(Smalltalk hasClassNamed: #WindowColorSpec)
		ifTrue: [ | color |
			color := Color colorFrom: self windowColorSpecification pastelColor.
			CommandShell setWindowColorFor: self to: color ]! !

!CrLfFileEditor class methodsFor: 'window color' stamp: 'dtl 4/11/2018 21:12'!
windowColorSpecification
	"Answer a WindowColorSpec object that declares my preference"

	| windowColorSpec |
	windowColorSpec := Smalltalk
				at: #WindowColorSpec
				ifAbsent: [^self error: 'this image does not support WindowColorSpec'].
	^ windowColorSpec
		classSymbol: self name
		wording: 'Command Shell File Editor'
		brightColor: Color lightOrange
		pastelColor: Color lightOrange paler paler
		helpMessage: 'CrLfFileEditor window for CommandShell ''edit'' comand'
! !

!PipeJunction methodsFor: 'testing' stamp: 'dtl 3/29/2003 11:33'!
atEnd
	"True after processing is complete and all available data has been read from
	the output pipe."

	^ pipeFromOutput atEnd and: [self isComplete]
! !

!PipeJunction methodsFor: 'testing' stamp: 'dtl 6/4/2006 18:10'!
atEndOfFile
	"True after processing is complete and all available data has been read
	from the output pipe. Uses feof() to test for the end of file flag, which
	will have been set by a previous read operation."

	^ pipeFromOutput isNil
		or: [pipeFromOutput atEndOfFile
				and: [self isComplete]]! !

!PipeJunction methodsFor: 'testing' stamp: 'dtl 11/15/2002 09:09'!
canProvideOutputPipe
	"If a subclass is not able to provide pipe output, it may answer false.
	This may happen if output has been redirected to a file."

	^ self pipeFromOutput notNil! !

!PipeJunction methodsFor: 'testing' stamp: 'dtl 11/21/2006 14:56'!
errorHasBeenRedirected
	"Answer true if the error output has been redirected to an external file
	and is not available to be read as error output of a pipeline."

	^ self errorPipelineStream isPipe not
! !

!PipeJunction methodsFor: 'testing' stamp: 'dtl 11/21/2006 16:21'!
inputHasBeenRedirected
	"Answer true if the input stream has been redirected to an external file."

	^ self pipeToInput notNil and: [pipeToInput isPipe not]
! !

!PipeJunction methodsFor: 'testing' stamp: 'dtl 4/14/2006 11:35'!
isComplete

	^ self subclassResponsibility
! !

!PipeJunction methodsFor: 'testing' stamp: 'dtl 3/9/2002 18:16'!
isExternalProcess
	"Answer true if the process which I represent is an external OSProcess."

	^ false! !

!PipeJunction methodsFor: 'testing' stamp: 'dtl 6/4/2006 17:26'!
pipesAreEmpty
	"True after processing is complete and all available data has been read 
	from the output pipe and the errorPipelineStream pipe."

	^ self atEndOfFile
		and: [self errorHasBeenRedirected
				or: [errorPipelineStream atEnd]]! !

!PipeJunction methodsFor: 'testing' stamp: 'dtl 9/9/2002 13:50'!
requiresNonBlockingInput
	"A PipeJunction managed by Squeak may be subject to deadlocks associated with
	reading or writing an OSPipe. Answer true if the input pipe must function in
	nonBlocking mode in order to prevent deadlocks. This method exists simply to
	make the requirement explicit."

	^ true! !

!PipeJunction methodsFor: 'initialize - release' stamp: 'dtl 3/11/2007 11:00'!
close
	"Close pipe to proxy input."

	pipeToInput ifNotNil: [pipeToInput close]
! !

!PipeJunction methodsFor: 'initialize - release' stamp: 'dtl 8/24/2012 08:31'!
closeErrorPipeline

	self errorPipelineStream ifNotNil: [[errorPipelineStream close]
		on: Error
		do: ["may be called from multiple processes, so tolerate primitive failure"]]
! !

!PipeJunction methodsFor: 'initialize - release' stamp: 'dtl 9/3/2010 17:15'!
closeOutput

	self pipeFromOutput ifNotNil: [pipeFromOutput close]
! !

!PipeJunction methodsFor: 'initialize - release' stamp: 'dtl 11/24/2006 12:59'!
closePipeInputs
	"Close all pipe endpoints not used after process termination."

	pipeToInput
		ifNotNil: [pipeToInput close].
	pipeFromOutput ifNotNil:
		[pipeFromOutput isPipe
			ifTrue: [pipeFromOutput closeWriter]
			ifFalse: [pipeFromOutput close]]
! !

!PipeJunction methodsFor: 'initialize - release' stamp: 'dtl 8/20/2006 18:54'!
closePipes

	self closeOutput.
	pipeToInput ifNotNil: [pipeToInput close].
	self errorHasBeenRedirected ifTrue: [errorPipelineStream close]
! !

!PipeJunction methodsFor: 'initialize - release' stamp: 'dtl 8/26/2006 13:42'!
closeWriter
	"No further input expected"

	(self pipeToInput notNil and: [pipeToInput isPipe])
		ifTrue: [pipeToInput closeWriter]
! !

!PipeJunction methodsFor: 'initialize - release' stamp: 'dtl 1/25/2003 13:07'!
ensurePipeFromOutput
	"Make sure that an output pipe is provided."

	^ self pipeFromOutput ifNil: [self pipeFromOutput: InternalPipe new]
! !

!PipeJunction methodsFor: 'initialize - release' stamp: 'dtl 9/10/2002 00:15'!
initialize

	(self requiresNonBlockingInput and: [pipeToInput isKindOf: OSPipe])
		ifTrue:[pipeToInput setNonBlocking]
			
! !

!PipeJunction methodsFor: 'initialize - release' stamp: 'dtl 1/2/2003 21:18'!
prepareOutputFor: aPipeJunction
	"External process proxies are independent of the Smalltalk image and do
	not require event driven input. Internal proxies will prefer to request
	event notification."

	aPipeJunction isExternalProcess
		ifTrue: [self prepareOutputForPipe]
		ifFalse: [self prepareOutputForInternalReader]
! !

!PipeJunction methodsFor: 'initialize - release' stamp: 'dtl 7/14/2002 23:51'!
resetStdioStreams
	"After an image restart, call this method to reset to the correct input, output
	and error streams if they are attached to standard input, output or error."

	Smalltalk at: #OSProcess ifPresent:
		[:osp |
		((self pipeToInput respondsTo: #isStdIn) and: [pipeToInput isStdIn])
			ifTrue: [self pipeToInput: osp thisOSProcess stdIn].
		((self pipeToInput respondsTo: #isStdOut) and: [pipeToInput isStdOut])
			ifTrue: [self pipeToInput: osp thisOSProcess stdOut].
		((self pipeToInput respondsTo: #isStdErr) and: [pipeToInput isStdErr])
			ifTrue: [self pipeToInput: osp thisOSProcess stdErr]]
! !

!PipeJunction methodsFor: 'initialize - release' stamp: 'dtl 9/28/2002 20:54'!
setNonBlockingOutput
	"Check first to make sure process is not complete because pipeFromOutput will not respond
	to #setNonBlocking after the process has exited."

	self isComplete ifFalse: [pipeFromOutput setNonBlocking]! !

!PipeJunction methodsFor: 'event handling' stamp: 'dtl 8/26/2006 12:11'!
complete
	"Evaluation has been completed. Perform any necessary cleanup."

	^ self closePipeInputs
! !

!PipeJunction methodsFor: 'event handling' stamp: 'dtl 11/14/2002 06:35'!
enableErrorStreamTriggers
	"Set the error stream to be event driven if possible, and answer true
	if event driven output is supported, otherwise false."

	^ false! !

!PipeJunction methodsFor: 'event handling' stamp: 'dtl 1/6/2003 20:31'!
enableEventTriggers
	"Set the output stream to be event driven if possible, and answer true if
	event driven output is supported, otherwise false. See #update: for event
	triggering logic."

	^ self enableOutputStreamTriggers
! !

!PipeJunction methodsFor: 'event handling' stamp: 'dtl 6/5/2006 07:19'!
enableOutputStreamTriggers
	"Set the output stream to be event driven if possible, and answer true
	if event driven output is supported, otherwise false."

	(pipeFromOutput notNil and: [pipeFromOutput isPipe])
		ifTrue: [^ pipeFromOutput setBufferedReader]
		ifFalse: [^ false]

! !

!PipeJunction methodsFor: 'event handling' stamp: 'dtl 9/3/2010 17:17'!
handleRedirectedOutputOf: predecessorProxy
	"If the output of predecessorProxy (in a pipeline) has been redirected,
	this pipe junction will not know when predecessorProxy has completed
	unless it requests notification. The pipe to input of this pipe junction should
	not be closed until predecessorProxy is complete, so close the pipe when the
	completion event occurs."

	predecessorProxy ifNotNil:
		[(predecessorProxy canProvideOutputPipe not
			and: [self inputHasBeenRedirected not]) ifTrue:
				[self pipeToInput
					ifNotNil:
						[predecessorProxy
							when: #complete
							send: #close
							to: pipeToInput writer]]]
! !

!PipeJunction methodsFor: 'event handling' stamp: 'dtl 7/7/2006 00:32'!
triggerComplete

	self triggerEvent: #complete
! !

!PipeJunction methodsFor: 'event handling' stamp: 'dtl 7/7/2006 09:11'!
triggerErrorDataReady

	self triggerEvent: #errorDataReady.
	Processor yield
! !

!PipeJunction methodsFor: 'event handling' stamp: 'dtl 7/7/2006 09:11'!
triggerOutputDataReady

	self triggerEvent: #outputDataReady.
	Processor yield
! !

!PipeJunction methodsFor: 'event handling' stamp: 'dtl 11/21/2002 18:38'!
updateErrorPipelineStream
	"Ensure that all available error output is placed into errorPipelineStream."
! !

!PipeJunction methodsFor: 'command pipelines' stamp: 'dtl 3/22/2003 14:48'!
errorPipeForNextProxy

	^ self errorHasBeenRedirected
		ifTrue: [nil]
		ifFalse: [self errorPipelineStream]
! !

!PipeJunction methodsFor: 'command pipelines' stamp: 'dtl 2/24/2013 10:25'!
output
	"Wait for process completion, and answer all available output."

	"((PipeableOSProcess command: 'ps') | 'grep squeak' | 'cut -c16-100') output"

	^ (self isNotYetRunning not and: [self canProvideOutputPipe])
		ifTrue: [(self outputOn: (WriteStream on: String new)) contents]
		ifFalse: ['']
! !

!PipeJunction methodsFor: 'command pipelines' stamp: 'dtl 11/8/2007 20:35'!
outputAndError
	"Answer an array with output and error contents. If standard error has been
	redirected to a file, answer a null string as the error message."

	"((PipeableOSProcess command: 'ps') | 'NoSuchCommand; grep squeak' | 'cut -c16-100') outputAndError"

	| out err |
	out := self output.
	(self errorHasBeenRedirected)
		ifTrue: [err := '']
		ifFalse: [err := errorPipelineStream contents].
	^ Array with: out with: err! !

!PipeJunction methodsFor: 'command pipelines' stamp: 'dtl 11/8/2007 20:35'!
outputOn: aStream
	"Wait for process completion, writing all available output on aStream"

	| d |
	d := nil.
	[self isComplete] whileFalse:
		[(d ifNil: [d := Delay forMilliseconds: 50]) wait.
		aStream nextPutAll: self upToEnd].
	aStream nextPutAll: self upToEndOfFile.
	^ aStream
! !

!PipeJunction methodsFor: 'command pipelines' stamp: 'dtl 4/14/2006 11:31'!
outputPipeForNextProxy

	^ self canProvideOutputPipe
		ifTrue: [pipeFromOutput]
		ifFalse: [nil]
! !

!PipeJunction methodsFor: 'command pipelines' stamp: 'dtl 11/8/2007 20:35'!
replaceOutputStreamWith: anotherStream
	"Sender is not happy with the kind of output stream we are using. Replace
	pipeFromOutput with anotherStream, and copy the current contents of pipeFromOutput
	to the new stream."

	| oldOutputStream |
	oldOutputStream := self pipeFromOutput.
	oldOutputStream removeDependent: self. "Break old dependency"
	self pipeFromOutput: anotherStream. "Restores the dependency automatically"
	oldOutputStream ifNotNil:
		[anotherStream ifNotNil:
			[anotherStream nextPutAll: oldOutputStream contents].
		oldOutputStream close]
! !

!PipeJunction methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:35'!
errorPipelineStream
	"Accumulates the error output of commands in a command pipeline."

	errorPipelineStream isNil ifTrue: [errorPipelineStream := InternalPipe nonBlockingPipe].
	^ errorPipelineStream
! !

!PipeJunction methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:35'!
errorPipelineStream: aStream
	"Accumulates the error output of commands in a command pipeline."

	errorPipelineStream := aStream
! !

!PipeJunction methodsFor: 'accessing' stamp: 'dtl 3/4/2002 21:46'!
pipeFromOutput

	^ pipeFromOutput! !

!PipeJunction methodsFor: 'accessing' stamp: 'dtl 9/3/2010 17:18'!
pipeFromOutput: aPipeStream

	(pipeFromOutput := aPipeStream)
		ifNotNil: [pipeFromOutput addDependent: self]
! !

!PipeJunction methodsFor: 'accessing' stamp: 'dtl 3/4/2002 21:36'!
pipeToInput

	^ pipeToInput! !

!PipeJunction methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:36'!
pipeToInput: aPipeStream

	pipeToInput := aPipeStream! !

!PipeJunction methodsFor: 'streaming' stamp: 'dtl 6/3/2006 10:40'!
errorUpToEnd
	"Answer all available characters from my error stream."

	^ (errorPipelineStream isNil or: [self errorHasBeenRedirected])
		ifTrue: ['']
		ifFalse: [errorPipelineStream upToEnd]
! !

!PipeJunction methodsFor: 'streaming' stamp: 'dtl 7/17/2006 05:48'!
errorUpToEndOfFile
	"Answer all available characters from the error stream. Block and
	continue reading until end of file is detected."

	^ (errorPipelineStream isNil or: [self errorHasBeenRedirected])
		ifTrue: ['']
		ifFalse: [errorPipelineStream upToEndOfFile]
! !

!PipeJunction methodsFor: 'streaming' stamp: 'dtl 9/19/2002 09:30'!
flush
	"Flush output to the standard input stream of my external process. If no
	external process is involved, do nothing."
! !

!PipeJunction methodsFor: 'streaming' stamp: 'dtl 9/19/2002 09:23'!
next

	^ pipeFromOutput next
! !

!PipeJunction methodsFor: 'streaming' stamp: 'dtl 9/19/2002 09:24'!
next: count

	^ pipeFromOutput next: count
! !

!PipeJunction methodsFor: 'streaming' stamp: 'dtl 9/19/2002 09:28'!
nextFromError: count
	"Answer up to count characters from the error pipeline stream, or an empty string
	if no data is available. All characters are routed through the errorPipelineStream,
	so that they are concatenated with any preceeding error message text (possibly from
	a preceeding process in a command pipeline)."

	^ errorPipelineStream next: count
! !

!PipeJunction methodsFor: 'streaming' stamp: 'dtl 9/19/2002 09:24'!
nextPut: aCharacter
	"Write aCharacter to the standard input stream of my external process."

	^ pipeToInput nextPut: aCharacter! !

!PipeJunction methodsFor: 'streaming' stamp: 'dtl 9/19/2002 09:25'!
nextPutAll: characters
	"Write characters to the standard input stream of my external process."

	^ pipeToInput nextPutAll: characters! !

!PipeJunction methodsFor: 'streaming' stamp: 'dtl 6/3/2006 10:38'!
upToEnd
	"Answer all available characters from the output stream."

	^ (self pipeFromOutput notNil and: [self canProvideOutputPipe])
		ifTrue: [pipeFromOutput upToEnd]
		ifFalse: ['']
! !

!PipeJunction methodsFor: 'streaming' stamp: 'dtl 6/3/2006 10:38'!
upToEndOfFile
	"Answer all available characters from the output stream. Block and
	continue reading until end of file is detected."

	^ (self pipeFromOutput notNil and: [self canProvideOutputPipe])
		ifTrue: [pipeFromOutput upToEndOfFile]
		ifFalse: ['']
! !

!PipeJunction methodsFor: 'command pipelines - private' stamp: 'dtl 11/25/2006 11:03'!
prepareOutputForInternalReader
	"Output stream will be used directly by a Smalltalk process. Set output 
	stream characteristics accordingly."

	self canProvideOutputPipe
		ifTrue: [pipeFromOutput setNonBlocking].
	self enableEventTriggers! !

!PipeJunction methodsFor: 'command pipelines - private' stamp: 'dtl 12/3/2006 12:34'!
prepareOutputForPipe
	"Output stream will be used by another process proxy as input. Set output stream
	characteristics accordingly. The output stream will be owned by the next process
	in a pipeline, but the error stream is shared by all processes in the pipeline, and
	can be event driven."

	Smalltalk
		at: #AioEventHandler
		ifPresent: [:aio | aio aioPluginPresent
				ifTrue: [self enableErrorStreamTriggers]]! !

!PipeJunction methodsFor: 'updating' stamp: 'dtl 8/19/2006 11:43'!
update: aParameter

	^ self changed: aParameter
! !

!PipeJunction class methodsFor: 'defaults' stamp: 'dtl 4/2/2006 13:10'!
externalPipeClass
	"If external pipes are not supported, use an internal pipe instead"

	"self externalPipeClass"

	^ Smalltalk
		at: #ExternalPipe
		ifAbsent: [Smalltalk
			at: #OSPipe "Older versions of OSProcess"
			ifAbsent: [InternalPipe]]
! !

!PipeableEvaluator methodsFor: 'accessing' stamp: 'dtl 2/1/2003 16:45'!
argumentArray

	^ argumentArray
! !

!PipeableEvaluator methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:36'!
argumentArray: anArrayOfStrings

	argumentArray := anArrayOfStrings
! !

!PipeableEvaluator methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:36'!
errorPipelineStream
	"Accumulates the error output of commands in a command pipeline."

	errorPipelineStream isNil
		ifTrue:
			[errorPipelineStream := InternalPipe nonBlockingPipe.
			errorPipelineStream addDependent: self].
	^ errorPipelineStream
! !

!PipeableEvaluator methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:36'!
errorPipelineStream: aStream
	"Accumulates the error output of commands in a command pipeline."

	errorPipelineStream ifNotNil: [errorPipelineStream removeDependent: self].
	errorPipelineStream := aStream.
	errorPipelineStream ifNotNil: [errorPipelineStream addDependent: self]
! !

!PipeableEvaluator methodsFor: 'accessing' stamp: 'dtl 4/19/2003 09:56'!
exitStatus

	^ exitStatus! !

!PipeableEvaluator methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:36'!
exitStatus: aSymbol

	exitStatus := aSymbol! !

!PipeableEvaluator methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:37'!
outputHasBeenRedirected
	"True if pipeFromOutput has been redirected to a FileStream"

	^ outputHasBeenRedirected ifNil: [outputHasBeenRedirected := false]! !

!PipeableEvaluator methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:37'!
outputHasBeenRedirected: trueOrFalse
	"True if pipeFromOutput has been redirected to a FileStream"

	outputHasBeenRedirected := trueOrFalse! !

!PipeableEvaluator methodsFor: 'accessing' stamp: 'dtl 11/29/2006 06:29'!
pipeFromError
	"Internal evaluators use the errorPipelineStream directly"

	^ self errorPipelineStream! !

!PipeableEvaluator methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:37'!
runState

	^ runState ifNil: [runState := #notYetRunning]
! !

!PipeableEvaluator methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:37'!
runState: aSymbol

	runState := aSymbol.
	self changed: #runState
! !

!PipeableEvaluator methodsFor: 'testing' stamp: 'dtl 6/8/2003 22:37'!
atEnd
	"True after processing is complete and all available data has been read from
	the output pipe."

	^ self isComplete
		and: [self outputHasBeenRedirected
				or: [self outputIsExternalStream
					or: [pipeFromOutput atEnd]]]
! !

!PipeableEvaluator methodsFor: 'testing' stamp: 'dtl 11/15/2002 09:10'!
canProvideOutputPipe
	"Answer false if output has been redirected to a file and cannot be accessed by
	the next process proxy in a command pipeline."

	^ super canProvideOutputPipe and: [self outputHasBeenRedirected not]
! !

!PipeableEvaluator methodsFor: 'testing' stamp: 'dtl 3/4/2002 06:58'!
isComplete

	^ self runState == #complete! !

!PipeableEvaluator methodsFor: 'testing' stamp: 'dtl 3/4/2002 06:59'!
isNotYetRunning

	^ self runState == #notYetRunning! !

!PipeableEvaluator methodsFor: 'testing' stamp: 'dtl 6/8/2003 22:35'!
outputIsExternalStream
	"True if output is being piped to an external proxy, or if output has been
	redirected to a file."

	^ self pipeFromOutput isKindOf: FileStream
! !

!PipeableEvaluator methodsFor: 'testing' stamp: 'dtl 12/22/2001 18:37'!
succeeded
	"Answer true if my evaluation completed successfully."

	^ self exitStatus == #success! !

!PipeableEvaluator methodsFor: 'setting run state' stamp: 'dtl 11/24/2006 13:01'!
complete
	"Evaluation has been completed. Perform some cleanup and notify
	interested parties."

	self closePipeInputs.
	self runState: #complete.
	self errorHasBeenRedirected
		ifTrue: [self closeErrorPipeline]! !

!PipeableEvaluator methodsFor: 'setting run state' stamp: 'dtl 3/4/2002 22:32'!
notYetRunning
	"Process has not yet entered running state."

	self runState: #notYetRunning
! !

!PipeableEvaluator methodsFor: 'setting run state' stamp: 'dtl 3/4/2002 22:32'!
running
	"Process is actively running."

	self runState: #running
! !

!PipeableEvaluator methodsFor: 'setting run state' stamp: 'dtl 3/4/2002 22:32'!
unknownRunState
	"Unable to determine the current run state of the process."

	self runState: #unknownRunState
! !

!PipeableEvaluator methodsFor: 'evaluating' stamp: 'dtl 11/25/2001 22:39'!
fail

	self exitStatus: #fail! !

!PipeableEvaluator methodsFor: 'evaluating' stamp: 'dtl 11/25/2001 22:39'!
success

	self exitStatus: #success! !

!PipeableEvaluator methodsFor: 'initialize - release' stamp: 'dtl 9/9/2002 13:51'!
initialize
	"If pipeFromOutput has been set, then the output stream is being redirected.
	Set a flag to indicate this, otherwise open new a pipe stream to use for output."

	pipeFromOutput isNil
		ifTrue: [self ensurePipeFromOutput]
		ifFalse: [self outputHasBeenRedirected: true].
	^ super initialize
! !

!PipeableEvaluator methodsFor: 'streaming' stamp: 'dtl 11/8/2007 20:37'!
nextPut: aCharacter
	"Write aCharacter to the standard input stream of my process."

	| readPosition |
	readPosition := pipeToInput position.
	pipeToInput setToEnd nextPut: aCharacter.
	pipeToInput position: readPosition.
	^ pipeToInput
! !

!PipeableEvaluator methodsFor: 'streaming' stamp: 'dtl 11/8/2007 20:37'!
nextPutAll: aCollection
	"Write aCollection to the standard input stream of my process."

	| readPosition |
	readPosition := pipeToInput position.
	pipeToInput setToEnd nextPutAll: aCollection.
	pipeToInput position: readPosition.
	^ pipeToInput
! !

!PipeableEvaluator methodsFor: 'error handling' stamp: 'dtl 11/8/2007 20:37'!
notify: aString at: aPosition in: aStream

	| s |
	s := aStream contents.
	self errorPipelineStream
		nextPutAll: (s copyFrom: 1 to: (aPosition - 1));
		nextPutAll: aString;
		nextPutAll: (s copyFrom: aPosition to: s size);
		cr

! !

!PipeableEvaluator methodsFor: 'error handling' stamp: 'dtl 4/7/2001 21:27'!
selectFrom: start to: end

	^ self blockString copyFrom: start to: end! !

!PipeableEvaluator methodsFor: 'error handling' stamp: 'dtl 4/7/2001 19:50'!
selectionInterval
	"The compiler wants this for some reason."

	^ 1 to: 1! !

!PipeableEvaluator methodsFor: 'error handling' stamp: 'dtl 12/8/2001 18:13'!
text
	"The compiler needs this to generate error messages."

	^ Text fromString: self expression! !

!PipeableEvaluator methodsFor: 'command pipelines' stamp: 'dtl 11/8/2007 20:38'!
| anotherCommandString
	"Pipe my output to another evaluator, where the other evaluator evaluates
	anotherCommandString."

	"((ExpressionEvaluator command: 'Smalltalk')
		| 'stdout nextPutAll: stdin upToEnd'
		| 'stdout nextPutAll: stdin upToEnd') upToEnd"

	"(ExpressionEvaluator command: 'BOGUS')
		| 'stdout nextPutAll: stdin upToEnd'
		| 'stdout nextPutAll: stdin upToEnd'"

	"((ExpressionEvaluator command: '(true == false) not')
		| 'stdout nextPutAll: stdin upToEnd'
		| 'stdout nextPutAll: stdin upToEnd') upToEnd"

	| new |
	new := self species
			command: anotherCommandString
			pipeFrom: self pipeFromOutput
			errorPipelineStream: self errorPipelineStream.
	self value.
	^ new
! !

!ExpressionEvaluator methodsFor: 'evaluating' stamp: 'dtl 2/1/2003 16:34'!
addTreeLeaves: treeOfSymbols to: aCollection
	"Flatten a tree of Symbols built by a Scanner."

	treeOfSymbols do: [:e |
		(e isKindOf: Array)
			ifTrue: [self addTreeLeaves: e to: aCollection]
			ifFalse: [aCollection add: e]].
	^ aCollection! !

!ExpressionEvaluator methodsFor: 'evaluating' stamp: 'dtl 6/15/2019 10:47'!
blockString
	"Answer source code for a block to execute my expression. Attempt to give it the correct
	number of parameters based on scanning expression for use of #args, #stderr, #stdout,
	and #stdin tokens."

	"ExpressionEvaluator new expression: 'stdout nextPutAll: (args at: 4)'; blockString"
	"ExpressionEvaluator new expression: 'stderr nextPutAll: stdin contents'; blockString"
	"ExpressionEvaluator new expression: 'stdout nextPutAll: stdin contents'; blockString"
	"ExpressionEvaluator new expression: 'stdin contents'; blockString"
	"ExpressionEvaluator new expression: '#HelloWorld'; blockString"

	| tokens prefix |
	self expression isNil
		ifTrue:
			[^ '[]']
		ifFalse:
			[tokens := self addTreeLeaves: (self tokensFrom: expression) to: OrderedCollection new.
			(tokens includes: #args)
				ifTrue:
					[prefix := '[:stdin :stdout :stderr :args | ']
				ifFalse:
					[(tokens includes: #stderr)
						ifTrue:
							[prefix := '[:stdin :stdout :stderr | ']
						ifFalse:
							[(tokens includes: #stdout)
								ifTrue:
									[prefix := '[:stdin :stdout | ']
								ifFalse:
									[(tokens includes: #stdin)
										ifTrue:
											[prefix := '[:stdin | ']
										ifFalse:
											[prefix := '[']]]].
			^ prefix, self expression, ']']
! !

!ExpressionEvaluator methodsFor: 'evaluating' stamp: 'dtl 11/8/2007 20:32'!
blockValue
	"Evaluate my evaluationBlock. For a smart block, answer self. For a dumb
	block, answer the result of evaluating it. Heuristic: If the block receives
	two or more arguments, then assume that it was smart enough to write
	output to stdout. Otherwise, assume that it was a dumb block."

	| nArgs |
	self evaluationBlock ifNil: [^ nil].
	nArgs := evaluationBlock numArgs.
	(nArgs == 0)
		ifTrue: "dumb block"
			[^ evaluationBlock value]
		ifFalse:
			[(nArgs == 4)
				ifTrue: "smart block"
					[evaluationBlock
						value: self pipeToInput
						value: self pipeFromOutput
						value: self errorPipelineStream
						value: self argumentArray]
				ifFalse:
					[(nArgs == 3)
						ifTrue: "smart block"
							[evaluationBlock
								value: self pipeToInput
								value: self pipeFromOutput
								value: self errorPipelineStream]
						ifFalse:
							[(nArgs == 2)
								ifTrue: "smart block"
									[evaluationBlock
										value: self pipeToInput
										value: self pipeFromOutput]	
								ifFalse:
									[(nArgs == 1)
										ifTrue: "dumb block"
											[^ evaluationBlock value: self pipeToInput]
										ifFalse: "really stupid block"
											[self error: 'expected block with 4 or fewer arguments'.
											^ nil]]]]]
! !

!ExpressionEvaluator methodsFor: 'evaluating' stamp: 'dtl 6/15/2019 11:20'!
compile
	"Compile my expression into a block with zero to four parameters. The parameters,
	if present, correspond to my pipeToInput, pipeFromOutput, errorPipelineStream, and
	an array of extra parameters (in that order). By convention, these are named 'stdin',
	'stdout', 'stderr', and 'args' within my expression string.

	If the compilation fails due to a syntax error (compile time failure, not run time
	failure), put an error message on the standard error stream and answer a block
	which evaluates to a null string."

	evaluationBlock ifNil:
		[evaluationBlock :=
			[self compilerClass evaluate: self blockString
					for: self
					notifying: self
					logged: false]
				on: Exception
				do: [:e |
					self errorPipelineStream
						nextPutAll: 'Compiler: invalid Smalltalk expression ', self blockString;
						nextPut: Character lf.
					self fail.
					nil]]
! !

!ExpressionEvaluator methodsFor: 'evaluating' stamp: 'dtl 6/16/2019 12:37'!
tokensFrom: expressionString

	(Smalltalk hasClassNamed: #Scanner)
		ifTrue: [ ^(Smalltalk at: #Scanner) new scanTokens: expressionString ].

	(expression respondsTo: #parseLiterals) "Pharo has different compiler"
		ifTrue: [ [ ^ expressionString perform: #parseLiterals ]
			on: Notification
			do: [ :ex | ^ #() ] ].

	self error: 'no system parser'! !

!ExpressionEvaluator methodsFor: 'evaluating' stamp: 'dtl 11/8/2007 20:32'!
value
	"Evaluate my evaluationBlock. If the block evaluates to anything other
	than self, then print the result on pipeFromOutput as output. Otherwise,
	assume that the block was smart enough to have written its own output.
	For a block which does not write its own output, add a trailing line
	terminator after the evaluation if needed. Answer self as the result of
	the evaluation."

	| result resultString |
	self success. "Hope for the best, send #fail if something goes wrong"
	self isNotYetRunning ifTrue:
		[self ensurePipeFromOutput.
		self running.
		self evaluationBlock notNil
			ifTrue:
				[result := [self blockValue]
					on: Error
					do: [:e |
						self errorPipelineStream nextPutAll: e description; nextPut: Character lf.
						self fail].
				(result == self)
					ifFalse:
						[resultString := result asString.
						pipeFromOutput nextPutAll: resultString.
						(resultString isEmpty not and:
							[(resultString last ~= Character cr) and:
								[resultString last ~= Character lf]])
							ifTrue: [pipeFromOutput nextPut: Character lf]]]
			ifFalse:
				[self fail].
		self complete]
! !

!ExpressionEvaluator methodsFor: 'initialize - release' stamp: 'dtl 4/19/2003 16:29'!
block: aBlock

	self evaluationBlock: aBlock.
	self initialize.
	self prepareOutputForInternalReader
! !

!ExpressionEvaluator methodsFor: 'initialize - release' stamp: 'dtl 4/19/2003 16:25'!
command: aString

	self expression: aString.
	self initialize.
	self prepareOutputForInternalReader
! !

!ExpressionEvaluator methodsFor: 'accessing' stamp: 'dtl 2/1/2003 16:34'!
evaluationBlock
	"Answer the block to be evaluated, possibly compiling it from the expression string."

	evaluationBlock ifNil: [self compile].
	^ evaluationBlock! !

!ExpressionEvaluator methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:32'!
evaluationBlock: aBlock
	"The block to be evaluated, possibly compiled from the expression string."

	evaluationBlock := aBlock! !

!ExpressionEvaluator methodsFor: 'accessing' stamp: 'dtl 2/1/2003 16:34'!
expression

	^ expression! !

!ExpressionEvaluator methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:32'!
expression: aString

	expression := aString! !

!ExpressionEvaluator class methodsFor: 'instance creation' stamp: 'dtl 3/26/2006 12:10'!
block: aBlock

	"(self block: [#'This block answers a symbol as String']) value upToEnd"

	^ self basicNew block: aBlock
! !

!ExpressionEvaluator class methodsFor: 'instance creation' stamp: 'dtl 3/26/2006 12:09'!
command: aString

	"(self command: '''Hello world!!''') value upToEnd"

	^ self basicNew command: aString
! !

!ExpressionEvaluator class methodsFor: 'instance creation' stamp: 'dtl 12/13/2007 21:38'!
command: aString pipeFrom: inputStream errorPipelineStream: errorStream

	"(self command: 'stdout nextPutAll: stdin upToEnd'
		pipeFrom: (ReadStream on: 'Here is some input text')
		errorPipelineStream: InternalPipe nonBlockingPipe)
			value upToEnd"

	^ self command: aString pipeFrom: inputStream pipeTo: nil errorPipelineStream: errorStream! !

!ExpressionEvaluator class methodsFor: 'instance creation' stamp: 'dtl 12/13/2007 21:38'!
command: aString pipeFrom: inputStream pipeTo: outputStream errorPipelineStream: errorStream

	"(self command: 'stdout nextPutAll: stdin contents'
		pipeFrom: (ReadStream on: 'Here is some input text')
		pipeTo: nil
		errorPipelineStream: InternalPipe nonBlockingPipe)
			value upToEnd"

	^ super new
		expression: aString;
		pipeToInput: inputStream;
		pipeFromOutput: outputStream;
		errorPipelineStream: errorStream;
		notYetRunning;
		initialize! !

!ShellBuiltinEvaluator methodsFor: 'accessing' stamp: 'dtl 2/1/2003 15:13'!
commandShell

	^ commandShell
! !

!ShellBuiltinEvaluator methodsFor: 'accessing' stamp: 'dtl 2/1/2003 15:12'!
commandShell: aCommandShell

	commandShell := aCommandShell
! !

!ShellBuiltinEvaluator methodsFor: 'accessing' stamp: 'dtl 2/1/2003 15:12'!
shellBuiltin

	^ shellBuiltin! !

!ShellBuiltinEvaluator methodsFor: 'accessing' stamp: 'dtl 2/1/2003 15:12'!
shellBuiltin: aShellBuiltin

	shellBuiltin := aShellBuiltin! !

!ShellBuiltinEvaluator methodsFor: 'testing' stamp: 'dtl 2/1/2003 16:08'!
needsPrompt
	"Answer true if a shell will want to issue a prompt after evaluating me."

	^ self shellBuiltin needsPrompt
! !

!ShellBuiltinEvaluator methodsFor: 'evaluating' stamp: 'dtl 12/21/2007 12:50'!
value

	self isNotYetRunning ifTrue:
		[self success. "Hope for the best, send #fail if something goes wrong"
		self running.
		self ensurePipeFromOutput.
		self shellBuiltin
				performWith: self argumentArray
				evaluator: self
				shell: self commandShell
				input: self pipeToInput
				output: self pipeFromOutput
				error: self errorPipelineStream]
! !

!ShellBuiltinEvaluator class methodsFor: 'instance creation' stamp: 'dtl 2/1/2003 16:01'!
command: aShellBuiltin withArguments: argumentArray shell: commandShell pipeFrom: inputStream pipeTo: outputStream errorPipelineStream: errorStream

	^ super new
		shellBuiltin: aShellBuiltin;
		argumentArray: argumentArray;
		commandShell: commandShell;
		pipeToInput: inputStream;
		pipeFromOutput: outputStream;
		errorPipelineStream: errorStream;
		initialize! !

!PipeableOSProcess methodsFor: 'command pipelines - private' stamp: 'dtl 7/7/2006 09:11'!
addToErrorPipeline: aString

	(aString isNil or: [aString isEmpty])
		ifFalse: [self errorPipelineStream nextPutAll: aString]! !

!PipeableOSProcess methodsFor: 'command pipelines - private' stamp: 'dtl 9/3/2010 17:23'!
prepareOutputForInternalReader
	"Output stream will be used directly by a Smalltalk process. Set output stream
	characteristics accordingly."

	| err |
	super prepareOutputForInternalReader.
	self setKeepInitialStdOutOpen.
	(err := self pipeFromError) ifNotNil: [err setNonBlocking]
! !

!PipeableOSProcess methodsFor: 'command pipelines - private' stamp: 'dtl 1/18/2003 10:06'!
prepareOutputForPipe
	"Output stream will be used by another process proxy as input. Set output stream
	characteristics accordingly."

	super prepareOutputForPipe.
	self setKeepInitialStdOutOpen; setBlockingOutput
! !

!PipeableOSProcess methodsFor: 'testing' stamp: 'dtl 6/4/2006 15:55'!
atEnd
	"True after processing is complete and all available data has been read 
	from the output pipe."

	^ pipeFromOutput isNil or: [pipeFromOutput atEnd]
! !

!PipeableOSProcess methodsFor: 'testing' stamp: 'dtl 2/27/2002 15:32'!
isComplete

	^ processProxy isComplete! !

!PipeableOSProcess methodsFor: 'testing' stamp: 'dtl 3/9/2002 18:17'!
isExternalProcess
	"Answer true if the process which I represent is an external OSProcess."

	^ true! !

!PipeableOSProcess methodsFor: 'testing' stamp: 'dtl 2/27/2002 22:50'!
isNotYetRunning

	^ processProxy isNotYetRunning! !

!PipeableOSProcess methodsFor: 'testing' stamp: 'dtl 2/27/2002 22:50'!
isRunning

	^ processProxy isRunning! !

!PipeableOSProcess methodsFor: 'testing' stamp: 'dtl 6/4/2006 17:26'!
pipesAreEmpty
	"True after processing is complete and all available data has been read 
	from the output pipe and the error pipe. Note: uses error handling 
	rather than testing for pipe closed to avoid race condition."

	^ (self atEndOfFile
			and: [pipeFromError isNil
					or: [pipeFromError atEndOfFile]])
		and: [errorPipelineStream atEnd]! !

!PipeableOSProcess methodsFor: 'testing' stamp: 'dtl 9/18/2002 11:24'!
requiresNonBlockingInput
	"A PipeJunction managed by Squeak may be subject to deadlocks associated with
	reading or writing an OSPipe. A PipeableOSProcess relies on the external operating
	system to provide process scheduling, so it will not block the Squeak VM when it
	is blocked on a read or a write."

	^ false! !

!PipeableOSProcess methodsFor: 'testing' stamp: 'dtl 2/27/2002 22:51'!
succeeded

	^ processProxy succeeded! !

!PipeableOSProcess methodsFor: 'initialize - release' stamp: 'dtl 11/27/2010 12:56'!
close
	"Close pipe to proxy input. The pipes from output and error are not
	closed. This will result in the external process seeing end of file on its
	input stream, which typically causes the external process to flush any
	remaining data to its output and error streams, then exit. It is the
	responsibility of the user to wait for that data to become available,
	read any data of interest, then close the output and error pipes to
	free remaining external pipe references (see closePipes)."

	^super close
! !

!PipeableOSProcess methodsFor: 'initialize - release' stamp: 'dtl 9/3/2010 17:19'!
closeOutput

	| p |
	(p := self pipeFromOutput)
		ifNotNil: [p removeDependent: self; close]
! !

!PipeableOSProcess methodsFor: 'initialize - release' stamp: 'dtl 8/26/2006 12:10'!
closePipeInputs
	"Close all pipe endpoints not used after process termination."

	super closePipeInputs.
	pipeFromError ifNotNil: [pipeFromError closeWriter]
! !

!PipeableOSProcess methodsFor: 'initialize - release' stamp: 'dtl 9/3/2010 17:20'!
closePipes
	"Replace the output and error pipe streams with internal pipes, and close
	all input and output pipes."

	| output out err p |
	self keepInitialStdOutOpen
		ifTrue:
			["The pipe stream will be closed by the next process in the command pipeline"
			(p := pipeFromOutput) ifNotNil: [p triggerDataReady]]
		ifFalse:
			[(output := self pipeFromOutput)
				ifNotNil:
					[accessProtect critical:
						[self pipeFromOutput: InternalPipe new.
						out := output upToEnd.
						out isEmpty ifFalse:
							[self pipeFromOutput nextPutAll: out.
							self triggerOutputDataReady].
						self pipeFromOutput closeWriter.
						output removeDependent: self; close]]].
	(pipeFromError) ifNotNil:
		[accessProtect critical:
			[err := pipeFromError upToEnd.
			err isEmpty ifFalse:
				[self addToErrorPipeline: err.
				self triggerEvent: #errorDataReady].
			pipeFromError removeDependent: self; close]].
	self keepInitialStdErrOpen ifTrue: [self processProxy initialStdErr close].
	self pipeToInput ifNotNil: [pipeToInput close]
! !

!PipeableOSProcess methodsFor: 'initialize - release' stamp: 'dtl 3/26/2006 14:06'!
createErrorPipe
	"Create a pipe for the error stream from the child process."

	self pipeFromError: PipeJunction externalPipeClass nonBlockingPipe
! !

!PipeableOSProcess methodsFor: 'initialize - release' stamp: 'dtl 3/26/2006 14:06'!
createInputPipe
	"Create a pipe for input to the child process."

	self pipeToInput: PipeJunction externalPipeClass blockingPipe
! !

!PipeableOSProcess methodsFor: 'initialize - release' stamp: 'dtl 3/26/2006 14:06'!
createOutputPipe
	"Create a pipe for output from the child process. The pipe should later be set
	to nonBlocking mode only if necessary to provent Squeak VM deadlocks."

	self pipeFromOutput: PipeJunction externalPipeClass blockingPipe
! !

!PipeableOSProcess methodsFor: 'initialize - release' stamp: 'dtl 2/26/2002 19:03'!
createPipes

	pipeToInput ifNil: [self createInputPipe].
	pipeFromOutput ifNil: [self createOutputPipe].
	pipeFromError ifNil: [self createErrorPipe]
! !

!PipeableOSProcess methodsFor: 'initialize - release' stamp: 'dtl 11/8/2007 20:38'!
handlePrecedingError
	"The stderr stream has been redirected. If there are any characters in the
	errorPipelineStream, write them to the stderr stream before proceeding. Fork
	a process to keep reading any additional error messages from preceding
	processes, and write them to the redirected error. When done, close the redirected
	error stream (this does not affect the actual external process, which has its own
	file handle on the error stream). A background process is used to copy the
	errorPipelineStream because it is not straightforward to attach all predecessor
	proxies in a command pipeline to the redirected error output. This design is
	kludgy, but it works."

	| d |
	d := Delay forMilliseconds: 200.
	self setKeepInitialStdErrOpen.
	Processor yield.	"A chance to clean up predecessor proxies in command pipeline"
	errorPipelineStream ifNotNil:
			[processProxy initialStdErr nextPutAll: errorPipelineStream upToEnd.
			[[self isRunning or: [self isNotYetRunning]]
				whileTrue:
					[processProxy initialStdErr nextPutAll: errorPipelineStream upToEnd.
					d wait].
				self keepInitialStdErrOpen ifFalse: [processProxy initialStdErr close]] fork]
! !

!PipeableOSProcess methodsFor: 'initialize - release' stamp: 'dtl 11/8/2007 20:38'!
initialize
	"Semaphore to protect against finalizing the output and error streams
	while they are being read."

	accessProtect := Semaphore forMutualExclusion.
	^ super initialize
! !

!PipeableOSProcess methodsFor: 'updating' stamp: 'dtl 11/21/2006 14:34'!
complete

	super complete.
	self updateErrorPipelineStreamToEndOfFile! !

!PipeableOSProcess methodsFor: 'updating' stamp: 'dtl 9/3/2010 17:24'!
update: aParameter
	"Clean up after processProxy exits. Remove myself as a dependent of processProxy,
	and close pipes."

	| err |
	(aParameter == pipeFromError)
		ifTrue:
			[accessProtect critical: [self addToErrorPipeline: pipeFromError upToEnd].
			^ self changed: self errorPipelineStream].

	(aParameter == #runState)
		ifTrue:
			[processProxy isComplete
				ifTrue:
					[(err := self pipeFromError)
						ifNotNil: [self addToErrorPipeline: err upToEnd].
					self complete.
					self changed: aParameter]
				ifFalse:
					[^ self]].

	^ super update: aParameter
! !

!PipeableOSProcess methodsFor: 'event handling' stamp: 'dtl 9/3/2010 17:20'!
enableErrorStreamTriggers
	"Set the error stream to be event driven if possible, and answer true
	if event driven output is supported, otherwise false."

	| err |
	(err := pipeFromError)
		ifNotNil: [^ err setBufferedReader].
	^ false! !

!PipeableOSProcess methodsFor: 'event handling' stamp: 'dtl 11/11/2002 22:51'!
enableEventTriggers
	"Set the output and error streams to be event driven if possible, and 
	answer true if event driven output is supported, otherwise false."

	^ self enableOutputStreamTriggers and: [self enableErrorStreamTriggers]
! !

!PipeableOSProcess methodsFor: 'event handling' stamp: 'dtl 9/3/2010 17:24'!
updateErrorPipelineStream
	"Ensure that all available error output is placed into errorPipelineStream."

	| p |
	(p := self pipeFromError) ifNotNil: [ | s |
		s := p upToEnd. "must be outside the critical block, race condition on #update:"
		accessProtect critical: [errorPipelineStream nextPutAll: s]]

! !

!PipeableOSProcess methodsFor: 'event handling' stamp: 'dtl 9/3/2010 17:25'!
updateErrorPipelineStreamToEndOfFile
	"Move all error output up to end of file to the errorPipelineStream."

	| p |
	(p := self pipeFromError) ifNotNil: [ | s |
		s := p upToEndOfFile. "must be outside the critical block, race condition on #update:"
		accessProtect critical: [errorPipelineStream nextPutAll: s].
		p close]
! !

!PipeableOSProcess methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:39'!
errorPipelineStream: aStream
	"Accumulates the error output of commands in a command pipeline. Overridden
	to eliminate setting self as a dependent of the error pipeline stream."

	errorPipelineStream := aStream
! !

!PipeableOSProcess methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:39'!
keepInitialStdErrOpen
	"True if stderr has been redirected and the handle must be kept open in case
	a predecessor in a command pipeline might have more error messages to write
	to the redirected error stream."

	^ keepInitialStdErrOpen ifNil: [keepInitialStdErrOpen := false]! !

!PipeableOSProcess methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:39'!
keepInitialStdErrOpen: trueOrFalse
	"True if stderr has been redirected and the handle must be kept open in case
	a predecessor in a command pipeline might have more error messages to write
	to the redirected error stream."

	keepInitialStdErrOpen := trueOrFalse! !

!PipeableOSProcess methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:39'!
keepInitialStdOutOpen
	"If false, close the output pipe when the child exits. If true, do not close the output pipe.
	This should be set true for an output pipe connected to another process in a pipeline,
	where it is assumed that the next process will close the pipe when it is done reading
	from it. Otherwise, the default behavior is to close the output pipe after transferring its
	contents to a Smalltalk stream."

	^ keepInitialStdOutOpen ifNil: [keepInitialStdOutOpen := false]
! !

!PipeableOSProcess methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:39'!
keepInitialStdOutOpen: trueOrFalse
	"If false, close the output pipe when the child exits. If true, do not close the output pipe.
	This should be set true for an output pipe connected to another process in a pipeline,
	where it is assumed that the next process will close the pipe when it is done reading
	from it. Otherwise, the default behavior is to close the output pipe after transfering its
	contents to a Smalltalk stream."

	keepInitialStdOutOpen := trueOrFalse
! !

!PipeableOSProcess methodsFor: 'accessing' stamp: 'dtl 1/20/2001 17:14'!
pipeFromError

	^ pipeFromError! !

!PipeableOSProcess methodsFor: 'accessing' stamp: 'dtl 9/3/2010 17:22'!
pipeFromError: aPipeStream

	(pipeFromError := aPipeStream)
		ifNotNil: [pipeFromError addDependent: self]
! !

!PipeableOSProcess methodsFor: 'accessing' stamp: 'dtl 3/3/2002 13:44'!
processProxy
	"An internal evaluation proxy, or an external OS process proxy."

	^ processProxy! !

!PipeableOSProcess methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:39'!
processProxy: aProxy
	"An internal evaluation proxy, or an external OS process proxy. Add myself as
	a dependent of aProxy in order to receive notification when the process run
	state changes."

	aProxy addDependent: self.
	processProxy := aProxy! !

!PipeableOSProcess methodsFor: 'streaming' stamp: 'dtl 6/3/2006 10:41'!
errorUpToEnd
	"Answer all available characters from the error stream of my external process."

	^ accessProtect critical: [super errorUpToEnd]
! !

!PipeableOSProcess methodsFor: 'streaming' stamp: 'dtl 11/21/2006 14:21'!
errorUpToEndOfFile
	"Answer all available characters from the error stream. Block and
	continue reading until end of file is detected."

	self updateErrorPipelineStreamToEndOfFile.
	^ errorPipelineStream upToEnd
! !

!PipeableOSProcess methodsFor: 'streaming' stamp: 'dtl 9/3/2010 17:42'!
flush
	"Flush output to the standard input stream of my external process."

	| p |
	(p := pipeToInput) ifNotNil: [p flush]! !

!PipeableOSProcess methodsFor: 'streaming' stamp: 'dtl 11/8/2007 20:40'!
next
	"Answer the next character from the output stream of my external process,
	or nil if no data is available."

	| s |
	s := accessProtect critical: [pipeFromOutput ifNotNil: [pipeFromOutput next]].
	^ s! !

!PipeableOSProcess methodsFor: 'streaming' stamp: 'dtl 11/8/2007 20:40'!
next: count
	"Answer up to count characters from the output stream of my external process,
	or an empty string if no data is available."

	| s |
	s := accessProtect critical: [pipeFromOutput ifNotNil: [pipeFromOutput next: count]].
	^ s! !

!PipeableOSProcess methodsFor: 'streaming' stamp: 'dtl 11/21/2002 18:37'!
nextFromError: count
	"Answer up to count characters from the error stream of my external process,
	or an empty string if no data is available. All characters are routed through
	the errorPipelineStream, so that they are concatenated with any preceeding
	error message text (possibly from a preceeding process in a command pipeline)."

	self updateErrorPipelineStream.
	^ self errorHasBeenRedirected
		ifTrue: [nil]
		ifFalse: [self errorPipelineStream next: count]
! !

!PipeableOSProcess methodsFor: 'streaming' stamp: 'dtl 6/3/2006 10:35'!
upToEnd
	"Answer all available characters from the output of my external process."

	^ accessProtect critical: [super upToEnd]
! !

!PipeableOSProcess methodsFor: 'streaming' stamp: 'dtl 6/3/2006 10:35'!
upToEndOfFile
	"Answer all available characters from the output stream. Block and
	continue reading until end of file is detected."

	^ accessProtect critical: [super upToEndOfFile]
! !

!PipeableOSProcess methodsFor: 'evaluating' stamp: 'dtl 2/27/2002 14:46'!
exec: aString
	"Pass aString to the child for execution. Presumably the child is running a
	command processor of some kind, such as a Unix shell."

	processProxy isRunning
		ifTrue:
			[self nextPutAll: aString;
			nextPut: Character lf;
			flush]
		ifFalse: [self notify: 'child process not running']


! !

!PipeableOSProcess methodsFor: 'evaluating' stamp: 'dtl 8/31/2019 16:35'!
runState
	processProxy
		ifNotNil: [ ^processProxy runState ]
		ifNil: [ ^ #unknownRunState ]! !

!PipeableOSProcess methodsFor: 'evaluating' stamp: 'dtl 12/15/2007 08:54'!
value
	"Start the external process"

	| p |
	self errorHasBeenRedirected ifTrue: [self handlePrecedingError].
	accessProtect critical:
		[p := processProxy ifNotNil: [processProxy value].
		"The external child process now owns its own copy of the pipe handles. We no
		longer need our copies of these handles, so close the ones that are not needed."
		p ifNotNil:
			[self keepInitialStdOutOpen ifFalse: [p closeInitialStdOut].
			self keepInitialStdErrOpen ifFalse: [p closeInitialStdErr]]]
! !

!PipeableOSProcess methodsFor: 'shell support' stamp: 'dtl 10/13/2001 11:33'!
needsPrompt
	"After evaluating the command, a shell will want to issue a prompt"

	^ true
! !

!PipeableOSProcess methodsFor: 'shell support' stamp: 'dtl 5/2/2020 16:53'!
nullStream

	^ CommandShell oldFileNamed: '/dev/null'
! !

!PipeableOSProcess methodsFor: 'command pipelines' stamp: 'dtl 1/18/2003 10:06'!
| anotherCommandString
	"Pipe my output to another external process, where the other external process
	executes anotherCommandString."

	"(PipeableOSProcess command: 'ps') | 'grep squeak' | 'cut -c16-100'"

	self setKeepInitialStdOutOpen.
	self setBlockingOutput.
	^ self species
			command: anotherCommandString
			pipeFrom: pipeFromOutput reader
			errorPipelineStream: self errorPipelineStream
! !

!PipeableOSProcess methodsFor: 'command pipelines' stamp: 'dtl 2/28/2002 07:57'!
replaceOutputStreamWith: anotherStreamOrNil
	"Sender is my successor in a command pipeline."

	processProxy isNotYetRunning
		ifFalse:
			[self error: 'too late to change the output now'].
	anotherStreamOrNil isNil
		ifFalse:
			[processProxy initialStdOut: anotherStreamOrNil.
			self pipeFromOutput: nil "Not accessible any more"]
		ifTrue:
			["Sender is my successor in a command pipeline, but does not want to use
			my standard output. Therefore, dump my standard output to the null device."
			pipeFromOutput
				ifNotNil:
					[pipeFromOutput close.
					self pipeFromOutput: nil].
			processProxy initialStdOut: self nullStream]
! !

!PipeableOSProcess methodsFor: 'command pipelines' stamp: 'dtl 12/3/2001 23:52'!
setKeepInitialStdErrOpen
	"Send this message if stderr has been redirected and the handle must be kept open in
	case a predecessor in a command pipeline might have more error messages to write
	to the redirected error stream."

	self keepInitialStdErrOpen: true! !

!PipeableOSProcess methodsFor: 'command pipelines' stamp: 'dtl 1/18/2003 10:06'!
setKeepInitialStdOutOpen
	"When child exits, do not close the output pipe. This is for an output pipe connected to
	another process in a pipeline, where it is assumed that the next process will close
	the pipe when it is done reading from it."

	self keepInitialStdOutOpen: true! !

!PipeableOSProcess methodsFor: 'private' stamp: 'dtl 8/7/2002 11:56'!
setBlockingOutput
	"Set the pipe from the child stdout to blocking mode. This is the normal
	mode for a pipe, although for Squeak we set pipe outputs to nonblocking
	to protect ourselves from blocking the Squeak VM when reading from
	a pipe. Unix command pipelines use the normal blocking behavior, and
	let the operating system timeslice the processes to keep the rest of the
	world from hanging on a blocked read."

	Smalltalk at: #OSProcess ifPresent:
		[:osp | pipeFromOutput ifNotNil: [osp accessor setBlocking: self pipeFromOutput reader ioHandle]]
! !

!PipeableOSProcess methodsFor: 'private' stamp: 'dtl 2/24/2013 10:25'!
unixFileNumbers
	"Utility method for debugging. Answer the Unix file numbers for the streams
	associated with this instance. This may be useful for debugging file handle
	leaks (files or sockets being opened but never closed).

	When a process proxy is initially set up, it will normally have six file
	numbers associated with it prior to forking the child (two file numbers each
	for stdin, stdout, and stderr). Once the child is forked, the process proxy in
	Squeak will close its copies of the child ends of the pipes, so only three of
	the original six file numbers remain visible to Squeak."

	"(PipeableOSProcess command: 'who') unixFileNumbers"

	"(PipeableOSProcess new: '/bin/ls'
		arguments: #('-ls' 'hosts' 'NOSUCHFILE') environment: nil
		descriptors: nil workingDir: '/etc'
		errorPipelineStream: ((WriteStream on: String new)
		nextPutAll: 'this is the error stream '; yourself)) unixFileNumbers"

	| d |
	Smalltalk at: #OSProcess ifPresent:
		[:osp |
		d := Dictionary new.
		d at: #initialStdIn put: (osp accessor unixFileNumber: processProxy initialStdIn ioHandle).
		d at: #initialStdOut put: (osp accessor unixFileNumber: processProxy initialStdOut ioHandle).
		d at: #initialStdErr put: (osp accessor unixFileNumber: processProxy initialStdErr ioHandle).
		d at: #'pipeToInput writer'
			put: (osp accessor unixFileNumber: pipeToInput writer ioHandle).
		d at: #'pipeFromOutput reader'
			put: (osp accessor unixFileNumber: pipeFromOutput reader ioHandle).
		d at: #'pipeFromError reader'
			put: (osp accessor unixFileNumber: pipeFromError reader ioHandle).
		^ d].
	^ nil
! !

!PipeableOSProcess class methodsFor: 'examples' stamp: 'dtl 1/24/2013 19:12'!
addTwoPlusTwoInChildSqueak
	"Fork a headless child Squeak. Send three objects to the child, and read one object
	returned from the child. The child Squeak uses the three objects to compute a result,
	which it sends back to its parent Squeak before exiting."

	"PipeableOSProcess addTwoPlusTwoInChildSqueak"

	| serializerClass childBlock in out rcv op param result childProxy writer sum s inputStream |
	(serializerClass := Smalltalk at: #ReferenceStream ifPresent: [:cls | cls ])
		ifNil: [^ self notify: 'ReferenceStream not found'].
	"Create block to be evaluated in a Squeak child process."
	childBlock := ["First set standard input to blocking. This avoids a delay to wait for
		data to be available, but note that it is dangerous to do this unless you
		are certain that you know in advance that the correct number of characters
		will be available on the input. If this is not the case, then the VM will block
		on the read and lock up the child squeak process."
		OSProcess thisOSProcess stdIn setBlocking.
		in := serializerClass on: OSProcess thisOSProcess stdIn.
		out := serializerClass on: OSProcess thisOSProcess stdOut.
		"read three objects"
		rcv := in next.
		op := in next.
		param := in next.
		"add two plus two"
		result := rcv perform: op with: param.
		"answer the result"
		out nextPut: result].
	"Fork a child Squeak that will evaluate the childBlock then exit"
	childProxy := PipeableOSProcess forkHeadlessSqueakAndDoThenQuit: childBlock.
	"Write three objects to the child Squeak process"
	writer := serializerClass on: childProxy pipeToInput writer.
	writer nextPut: 2.
	writer nextPut: #+.
	writer nextPut: 2.
	"Read the result object from the child Squeak process"
	s := RWBinaryOrTextStream with: childProxy pipeFromOutput upToEndOfFile.
	s reset.
	inputStream := serializerClass on: s.
	sum := inputStream next.
	"show result of 2 + 2 evaluated in the child Squeak"
	self inform: '2 + 2 equals ', sum asString.
	^ sum
! !

!PipeableOSProcess class methodsFor: 'examples' stamp: 'dtl 11/8/2007 20:41'!
remoteShellExample: remoteUnixHostName
	"Start a shell on another computer using rsh, and answer the the output
	of some commands on the remote host. You must have security access to
	the remote system in order for this to work."

	"PipeableOSProcess remoteShellExample: 'minnow.cc.gatech.edu'"
	"PipeableOSProcess remoteShellExample: 'micron'"
	"PipeableOSProcess remoteShellExample: 'localhost'"

	| rsh output |
	rsh :=  self remoteShell: remoteUnixHostName.
	rsh exec: 'echo remote host name is '.
	rsh exec: 'hostname'.
	rsh exec: 'exit'.
	output := rsh output.
	rsh close.
	rsh succeeded
		ifTrue: [self notify: output]
		ifFalse: [self notify: 'remote shell failed with error message: ', rsh errorUpToEnd].
	^ rsh
! !

!PipeableOSProcess class methodsFor: 'examples' stamp: 'dtl 11/8/2007 20:41'!
tkExample
	"Start an interactive Tk shell and send it some commands to display a user interface."

	"PipeableOSProcess tkExample"

	| wish |
	wish :=  self wish.
	[wish
		exec: 'button .b1 -text "This is button b1"';
		exec: 'button .b2 -text "This is button b2"';
		exec: 'button .exit -text Exit -command exit';
		exec: 'pack .b1 .b2 .exit'] fork.
	^ wish
! !

!PipeableOSProcess class methodsFor: 'examples' stamp: 'dtl 3/4/2002 07:21'!
unixCommandPipeLine
	"Run a pipeline of commands in a manner similar to Unix command shell
	usage, and answer the result as a string."

	"PipeableOSProcess unixCommandPipeLine"

	^ ((PipeableOSProcess command: 'ps') | 'grep squeak' | 'cut -c16-100') output! !

!PipeableOSProcess class methodsFor: 'examples' stamp: 'dtl 12/15/2007 11:52'!
xtermExample
	"Open an external xterm window running a 'top' command. Works on unix
	X window platforms."

	"self xtermExample"

	^ self xterm: 'top -d 2'! !

!PipeableOSProcess class methodsFor: 'utility' stamp: 'dtl 9/3/2010 17:26'!
bash
	"Start a Gnu bash command interpreter (enhanced Unix shell)"

	"self bash"
	"self bash exec: 'ls'; exec: 'who'; close; upToEnd"

	| proxyClass |
	(proxyClass := self externalProxyClass) ifNotNil:
		[^ self command: proxyClass bashShellPath].
	^ self notify: 'OSProcess not available'
! !

!PipeableOSProcess class methodsFor: 'utility' stamp: 'dtl 11/8/2007 20:40'!
canAccessOSProcess
	"True if OSProcess is in the image and if the OSProcess plugin is functioning properly"

	"self canAccessOSProcess"

	| osp |
	^ (osp := Smalltalk at: #OSProcess ifAbsent: []) notNil and: [osp accessor canAccessSystem]
! !

!PipeableOSProcess class methodsFor: 'utility' stamp: 'dtl 9/3/2010 17:35'!
remoteShell: remoteSystemName 
	"Start a remote Unix shell on another computer"

	"self remoteShell: 'localhost'"

	| proxyClass |
	(proxyClass := self externalProxyClass) ifNotNil:
		[^ self
			forkAndExec: proxyClass remoteShellPath
			arguments: (Array with: remoteSystemName with: 'sh')
			environment: nil
			descriptors: nil
			workingDir: nil
			errorPipelineStream: nil].
	^ self notify: 'OSProcess not available'


! !

!PipeableOSProcess class methodsFor: 'utility' stamp: 'dtl 9/3/2010 17:35'!
shell
	"Start a Unix shell"

	"self shell"
	"self shell exec: 'ls'; exec: 'who'; close; upToEnd"

	| proxyClass |
	(proxyClass := self externalProxyClass) ifNotNil:
		[^ self command: proxyClass defaultShellPath].
	^ self notify: 'OSProcess not available'
! !

!PipeableOSProcess class methodsFor: 'utility' stamp: 'dtl 11/8/2007 20:40'!
waitForCommand: aCommandString
	"Run a command in a shell process. Similar to the system(3) call in the standard C library.
	The active Smalltalk process waits for completion of the external command process. This just
	uses a simple polling loop, which is not very elegant but works well enough for most purposes."

	"self waitForCommand: 'echo sleeping...; sleep 3; echo I just slept for three seconds'"

	| proc d |
	d := Delay forMilliseconds: 50.
	proc := self command: aCommandString.
	proc ifNil: [self class noAccessorAvailable].
	[proc isComplete] whileFalse: [d wait].
	^ proc
! !

!PipeableOSProcess class methodsFor: 'utility' stamp: 'dtl 9/3/2010 17:36'!
wish
	"Start a Tk/Tcl command interpreter"

	"self wish"

	| proxyClass |
	(proxyClass := self externalProxyClass) ifNotNil:
		[^ self command: proxyClass tkShellPath].
	^ self notify: 'OSProcess not available'
! !

!PipeableOSProcess class methodsFor: 'utility' stamp: 'dtl 12/15/2007 11:49'!
xon: remoteSystem command: aCommandString
	"Convenience method for running an X program on a remote system and displaying its window
	on the local display."

	"self xon: 'someRemoteHost' command: 'xeyes'"

	^ self command: 'xon ', remoteSystem, ' ', aCommandString
! !

!PipeableOSProcess class methodsFor: 'utility' stamp: 'dtl 4/19/2003 16:41'!
xterm: aCommandString
	"Convenience method for running a command in an external xterm window"

	"self xterm: 'top -d 2'"

	^ self command: 'xterm -T ''', aCommandString, ''' -e ', aCommandString! !

!PipeableOSProcess class methodsFor: 'external command processing' stamp: 'dtl 3/4/2002 07:24'!
command: aString

	"(PipeableOSProcess command: '/bin/echo this is a test') output"
	"(PipeableOSProcess command: 'echo this is a test') output"
	"(PipeableOSProcess command: '/bin/noSuchCommand this is a test') output"
	"(PipeableOSProcess command: 'ls -l Sq*log') output"
	"(PipeableOSProcess command: 'ls -l ?q*log') output"
	"(PipeableOSProcess command: '/bogusDirectory/ls -l Sq*log') output"

	^ self command: aString
		environment: nil
		workingDir: nil
		input: nil
		output: nil
		error: nil
		errorPipelineStream: nil! !

!PipeableOSProcess class methodsFor: 'external command processing' stamp: 'dtl 11/8/2011 19:44'!
command: aString environment: anEnvironmentDictionary

	"| env path |
	env := OSProcess thisOSProcess environment copy.
	path := (env at: #PATH), ':/opt/local/bin/'.
	env at: #PATH put: path.
	(PipeableOSProcess command: 'echo $PATH' environment: env) output"

	^ self command: aString
		environment: anEnvironmentDictionary
		workingDir: nil
		input: nil
		output: nil
		error: nil
		errorPipelineStream: nil
! !

!PipeableOSProcess class methodsFor: 'external command processing' stamp: 'dtl 12/13/2007 21:46'!
command: aString environment: anEnvironmentDictionary workingDir: pathString input: inputStream output: outputStream error: errorStream errorPipelineStream: anErrorWriteStream

	"(PipeableOSProcess command: 'ls -l hosts NOSUCHFILE' environment: nil workingDir: '/etc' input: nil output: nil error: nil errorPipelineStream: (InternalPipe nonBlockingPipe nextPutAll: 'this is the error stream '; yourself)) output"

	^ self command: aString
		environment: anEnvironmentDictionary
		workingDir: pathString
		input: inputStream
		output: outputStream
		error: errorStream
		errorPipelineStream: anErrorWriteStream
		shellSyntax: nil
! !

!PipeableOSProcess class methodsFor: 'external command processing' stamp: 'dtl 9/27/2014 11:28'!
command: aString environment: anEnvironmentDictionary workingDir: pathString input: inputStream output: outputStream error: errorStream errorPipelineStream: anErrorWriteStream shellSyntax: aSyntaxProcessor

	"(PipeableOSProcess command: 'ls -l hosts NOSUCHFILE' environment: nil workingDir: '/etc' input: nil output: nil error: nil errorPipelineStream: (InternalPipe nonBlockingPipe nextPutAll: 'this is the error stream '; yourself) shellSyntax: nil) output"

	| p |
	p := self
		commandNoEvaluate: aString
		environment: anEnvironmentDictionary
		workingDir: pathString
		input: inputStream
		output: outputStream
		error: errorStream
		errorPipelineStream: anErrorWriteStream
		shellSyntax: aSyntaxProcessor.
	p pipeFromOutput setBufferedReader.
	(Delay forMilliseconds: 1) wait. "context switch to enable buffered reader"
	p value.
	^p
! !

!PipeableOSProcess class methodsFor: 'external command processing' stamp: 'dtl 4/28/2001 12:04'!
command: aCommandString pipeFrom: aPipeStream errorPipelineStream: anErrorStream
	"Run a command in a shell process. Similar to the system(3) call in the standard C library,
	except that aCommandString runs asynchronously in a child process."

	^ self
		command: aCommandString
		environment: nil
		workingDir: nil
		input: aPipeStream
		output: nil
		error: nil
		errorPipelineStream: anErrorStream! !

!PipeableOSProcess class methodsFor: 'external command processing' stamp: 'dtl 10/13/2008 06:31'!
commandNoEvaluate: aString environment: anEnvironmentDictionary workingDir: pathString input: inputStream output: outputStream error: errorStream errorPipelineStream: anErrorWriteStream shellSyntax: aSyntaxProcessor
	"Set up the command but do not actually fork the child process."

	"PipeableOSProcess commandNoEvaluate: 'ls -l hosts NOSUCHFILE' environment: nil workingDir: '/etc' input: nil output: nil error: nil errorPipelineStream: (InternalPipe nonBlockingPipe nextPutAll: 'this is the error stream '; yourself) shellSyntax: nil"

	| nameAndArgs proxyClass |
	nameAndArgs := aSyntaxProcessor isNil
		ifTrue:
			[(proxyClass := self externalProxyClass) isNil
				ifTrue:
					[Array with: aString with: Array new]
				ifFalse:
					[Array
						with: proxyClass defaultShellPath
						with: (Array with: '-c' with: aString)]]
		ifFalse:
			[aSyntaxProcessor
				programNameAndArgumentsFrom: aString
				inDirectoryPath: pathString
				findExecutable: true].
	^ nameAndArgs ifNotNil:
		[self new: (nameAndArgs at: 1)
			arguments: (nameAndArgs at: 2)
			environment: anEnvironmentDictionary
			descriptors: (Array with: inputStream with: outputStream with: errorStream)
			workingDir: pathString
			errorPipelineStream: anErrorWriteStream]

! !

!PipeableOSProcess class methodsFor: 'process proxy classes' stamp: 'dtl 8/7/2002 13:42'!
externalProxyClass

	"self externalProxyClass"

	^ Smalltalk at: #ExternalOSProcess ifPresent: [:eosp | eosp concreteClass]
! !

!PipeableOSProcess class methodsFor: 'instance creation' stamp: 'dtl 12/13/2007 21:39'!
forkAndExec: executableFile arguments: arrayOfStrings environment: stringDictionary descriptors: arrayOf3Streams workingDir: pathString errorPipelineStream: anErrorStream
	"Run a program in an external OS process, and answer an instance of myself
	which represents the external process."

	"PipeableOSProcess forkAndExec: '/bin/ls' arguments: #('-ls' 'hosts' 'NOSUCHFILE') environment: nil descriptors: nil workingDir: '/etc' errorPipelineStream: (InternalPipe nonBlockingPipe nextPutAll: 'this is the error stream '; yourself)"

	^ self canAccessOSProcess
		ifTrue:
			[(self new: executableFile
			arguments: arrayOfStrings
			environment: stringDictionary
			descriptors: arrayOf3Streams
			workingDir: pathString
			errorPipelineStream: anErrorStream) value; yourself]
		ifFalse:
			[self notify: 'OSProcess not available or OSProcess plugin not functioning']
! !

!PipeableOSProcess class methodsFor: 'instance creation' stamp: 'dtl 5/19/2009 23:28'!
forkHeadlessSqueakAndDoThenQuit: aBlock
	"Start a new headless Squeak running in a child OS process. The new instance is a
	clone of this image except for the return value of this method. It does not reload the
	image file from disk. The child image evaluates aBlock."

	"| child |
	child := PipeableOSProcess forkHeadlessSqueakAndDoThenQuit:
		[OSProcess thisOSProcess stdOut
			nextPutAll: 'hello from headless Squeak child ',
				OSProcess thisOSProcess pid asString].
	child upToEndOfFile"
	
	^ self forkSqueakAndDoThenQuit: aBlock
		errorPipelineStream: InternalPipe nonBlockingPipe
		headless: true
! !

!PipeableOSProcess class methodsFor: 'instance creation' stamp: 'dtl 11/11/2011 10:20'!
forkSqueakAndDoThenQuit: aBlock
	"Start a new instance of Squeak running in a child OS process. The new instance is a
	clone of this image except for the return value of this method. It does not reload the
	image file from disk. The child image evaluates aBlock."

	"PipeableOSProcess forkSqueakAndDoThenQuit:
		[Object inform: 'Hi, I am the child Squeak process. Click OK to exit the child Squeak.']"
	
	^ self
		forkSqueakAndDoThenQuit: aBlock
		errorPipelineStream: InternalPipe nonBlockingPipe
		headless: false
! !

!PipeableOSProcess class methodsFor: 'instance creation' stamp: 'dtl 11/10/2011 20:25'!
forkSqueakAndDoThenQuit: aBlock errorPipelineStream: anErrorStream headless: headless
	"Start a new instance of Squeak running in a child OS process. The new instance is a
	clone of this image except for the return value of this method. It does not reload the
	image file from disk. The child image evaluates aBlock."

	^ self
		forkSqueakAndDoThenQuit: aBlock
		errorPipelineStream: anErrorStream
		headless: headless
		bufferedOutput: true! !

!PipeableOSProcess class methodsFor: 'instance creation' stamp: 'dtl 11/11/2011 11:35'!
forkSqueakAndDoThenQuit: aBlock errorPipelineStream: anErrorStream headless: headless bufferedOutput: buffered
	"Start a new instance of Squeak running in a child OS process. The new instance is a
	clone of this image except for the return value of this method. It does not reload the
	image file from disk. The child image evaluates aBlock."

	^ self
		forkSqueakAndDoThenQuit: aBlock
		errorPipelineStream: anErrorStream
		headless: headless
		bufferedOutput: buffered
		outputNotifier: nil! !

!PipeableOSProcess class methodsFor: 'instance creation' stamp: 'dtl 6/7/2015 12:05'!
forkSqueakAndDoThenQuit: aBlock errorPipelineStream: anErrorStream headless: headless bufferedOutput: buffered outputNotifier: aioEventHandler
	"Start a new instance of Squeak running in a child OS process. The new instance is a
	clone of this image except for the return value of this method. It does not reload the
	image file from disk. The child image evaluates aBlock."

	| pp proc parentVmProcess blockWithRedirection |
	pp := super new.
	pp createPipes.
	buffered ifTrue: [pp pipeFromOutput setBufferedReader].
	aioEventHandler ifNotNil: [ buffered
		ifTrue: [self error: 'buffered reader already has AIO handler']
		ifFalse: [aioEventHandler forFileStream: pp pipeFromOutput reader]].
	blockWithRedirection := [
		pp pipeToInput reader setNonBlocking.
		OSProcess thisOSProcess redirectStdInTo: pp pipeToInput reader.
		OSProcess thisOSProcess redirectStdOutTo: pp pipeFromOutput writer.
		OSProcess thisOSProcess redirectStdErrTo: pp pipeFromError writer.
		pp pipeToInput writer close.
		pp pipeFromOutput reader close.
		pp pipeFromError reader close.
		aBlock value].	
	parentVmProcess := OSProcess thisOSProcess.
	proc := headless
				ifTrue: [parentVmProcess forkHeadlessSqueakAndDoThenQuit: blockWithRedirection]
				ifFalse: [parentVmProcess forkSqueakAndDoThenQuit: blockWithRedirection].
	proc pid = parentVmProcess pid
		ifTrue: ["child Squeak - this branch is never reached"]
		ifFalse: ["parent Squeak - set the child Squeak as the process proxy"
			pp errorPipelineStream: anErrorStream.
			pp pipeToInput reader close.
			pp pipeFromOutput writer close.
			pp pipeFromError writer close.
			^ pp processProxy: proc]
! !

!PipeableOSProcess class methodsFor: 'instance creation' stamp: 'dtl 9/3/2010 17:33'!
new: executableFile arguments: arrayOfStrings environment: stringDictionary descriptors: arrayOf3Streams workingDir: pathString errorPipelineStream: anErrorStream
	"Prepare to run a program in an external OS process, and answer an instance of
	myself which will represent the external process."

	"PipeableOSProcess new: '/bin/ls' arguments: #('-ls' 'hosts' 'NOSUCHFILE') environment: nil descriptors: nil workingDir: '/etc' errorPipelineStream: (InternalPipe nonBlockingPipe nextPutAll: 'this is the error stream '; yourself)"

	"PipeableOSProcess new: 'sol' arguments: nil environment: nil descriptors: nil workingDir: nil errorPipelineStream: (InternalPipe nonBlockingPipe nextPutAll: 'this is the error stream '; yourself)"

	| pp proc proxyClass s |
	pp := super new.
	(proxyClass := self externalProxyClass) ifNotNil:
		[proc := proxyClass
			programName: executableFile
			arguments: arrayOfStrings
			initialEnvironment: stringDictionary].
	proc ifNil: [^ self notify: 'OSProcess not available'].
	arrayOf3Streams isNil
		ifTrue:
			[pp createPipes.
			proc initialStdIn: pp pipeToInput reader.
			proc initialStdOut: pp pipeFromOutput writer.
			proc initialStdErr: pp pipeFromError writer]
		ifFalse:
			[(s := (arrayOf3Streams at: 1)) isNil
				ifTrue:
					[pp createInputPipe.
					proc initialStdIn: pp pipeToInput reader]
				ifFalse:
					[proc initialStdIn: s].
			(s := (arrayOf3Streams at: 2)) isNil
				ifTrue:
					[pp createOutputPipe.
					proc initialStdOut: pp pipeFromOutput writer]
				ifFalse:
					[proc initialStdOut: s].
			(s := (arrayOf3Streams at: 3)) isNil
				ifTrue:
					[pp createErrorPipe.
					proc initialStdErr: pp pipeFromError writer]
				ifFalse:
					[proc initialStdErr: s]].
	pathString ifNotNil: [proc pwd: pathString].
	pp errorPipelineStream: anErrorStream.
	pp initialize.
	proc initialize.
	^ pp processProxy: proc
! !

!ProxyPipeline methodsFor: 'testing' stamp: 'dtl 2/8/2020 17:05'!
atEnd

	^ self isEmpty or: [self last atEnd]
! !

!ProxyPipeline methodsFor: 'testing' stamp: 'dtl 9/12/2003 11:53'!
isComplete
	"True if all proxies are complete. The proxies may report their completion events
	out of sequence, so test all the proxies (not just the last one in the pipeline)."

	^ self noneSatisfy: [:proxy | proxy isComplete not]
! !

!ProxyPipeline methodsFor: 'testing' stamp: 'dtl 4/19/2003 09:16'!
isExternalProcess
	"Answer true if the process which I represent is an external OSProcess. For protocol
	compatibility with PipeJunction."

	^ false! !

!ProxyPipeline methodsFor: 'testing' stamp: 'dtl 2/8/2020 17:23'!
needsPrompt

	^ self isEmpty or: [self last needsPrompt]! !

!ProxyPipeline methodsFor: 'testing' stamp: 'dtl 2/8/2020 17:35'!
pipesAreEmpty
	"True after processing is complete and all available data has been read from
	the output pipe and the errorPipelineStream pipe."

	^ self isComplete and: [self isEmpty or: [self last pipesAreEmpty]]
! !

!ProxyPipeline methodsFor: 'testing' stamp: 'dtl 7/5/2006 09:07'!
succeeded
	"Answer true if all proxies succeeded, otherwise false"

	self detect: [:proxy | proxy succeeded not] ifNone: [^ true].
	^ false
! !

!ProxyPipeline methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:42'!
background
	"Answer true if this pipeline should be evaluated in the background."

	^ background ifNil: [background := false]! !

!ProxyPipeline methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:42'!
background: trueOrFalse

	background := trueOrFalse! !

!ProxyPipeline methodsFor: 'accessing' stamp: 'dtl 11/20/2002 19:20'!
commandLine
	"Command line string from which this pipeline was constructed"

	^ commandLine! !

!ProxyPipeline methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:42'!
commandLine: aString
	"Command line string from which this pipeline was constructed"

	commandLine := aString! !

!ProxyPipeline methodsFor: 'accessing' stamp: 'dtl 11/20/2006 13:28'!
completionSemaphore
	"Answer the value of completionSemaphore. This semaphore is signaled
	when the last proxy completes. Subsequent cleanup is preformed by a
	process waiting on the semaphore. Completion notification is often triggered
	by the grimReaperProcess, so the separate pipeline cleanup prevents
	those activities from being processed in the context of the grimReaperProcess."

	^ completionSemaphore ifNil: [completionSemaphore := Semaphore new]! !

!ProxyPipeline methodsFor: 'accessing' stamp: 'dtl 11/20/2006 13:21'!
completionWatcher
	"A process that waits for notification that the last proxy has completed,
	and performs any necessary cleanup. Completion notification is often
	triggered by the grimReaperProcess, so the separate pipeline cleanup
	prevents those activities from being processed in the context of the
	grimReaperProcess."

	^ completionWatcher! !

!ProxyPipeline methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:42'!
completionWatcher: anObject
	"Set the value of completionWatcher"

	completionWatcher := anObject! !

!ProxyPipeline methodsFor: 'accessing' stamp: 'dtl 2/8/2020 17:37'!
errorPipelineStream
	"Accumulates the error output of commands in a command pipeline."

	^ self isEmpty
		ifTrue: []
		ifFalse: [self last errorPipelineStream]! !

!ProxyPipeline methodsFor: 'accessing' stamp: 'dtl 2/8/2020 17:34'!
pipeFromOutput
	"The output from the last proxy in the pipeline, if any"

	^ self isEmpty
		ifTrue: []
		ifFalse: [self last pipeFromOutput]! !

!ProxyPipeline methodsFor: 'accessing' stamp: 'dtl 4/28/2003 20:58'!
pipeToInput
	"The input to the first proxy in the pipeline, if any"

	self isEmpty
		ifTrue: [^ nil]
		ifFalse: [^ self first pipeToInput]! !

!ProxyPipeline methodsFor: 'initialize - release' stamp: 'dtl 12/31/2002 10:57'!
close
	"Close input pipe to first proxy in the pipeline. The proxies are not
	finalized, this simply closes the input stream to allow normal processing
	to proceed to completion."

	self isEmpty ifFalse: [self first close]
! !

!ProxyPipeline methodsFor: 'initialize - release' stamp: 'dtl 9/3/2010 17:37'!
closePipes

	| p |
	self do: [:e | e closePipes].
	self unregisterEvents.
	(p := self pipeFromOutput) ifNotNil: [p close]
! !

!ProxyPipeline methodsFor: 'initialize - release' stamp: 'dtl 11/8/2007 20:42'!
fromString: aCommandString shell: aCommandShell 
	"Initialize a new instance created from aCommandString using aCommandShell. "

	self commandLine: aCommandString.
	(aCommandShell splitPipelineCommands: aCommandString)
		inject: nil
		into: [:prevProxy :command | 
			| nextProxy |
			nextProxy := aCommandShell
				redirectedPipeableProxyFor: command
				predecessorProxy: prevProxy.
			prevProxy
				ifNotNil: [prevProxy prepareOutputFor: nextProxy.
					prevProxy canProvideOutputPipe
						ifFalse: [nextProxy closeWriter]].
			self add: nextProxy].
	self isEmpty
		ifFalse: [self last prepareOutputFor: self; addDependent: self]! !

!ProxyPipeline methodsFor: 'initialize - release' stamp: 'dtl 8/20/2006 19:05'!
unregisterEvents

	self isEmpty ifFalse: [self last removeDependent: self]
! !

!ProxyPipeline methodsFor: 'streaming' stamp: 'dtl 2/8/2020 17:07'!
errorUpToEnd
	"Answer all available characters from the error stream shared by my proxies."

	^ self isEmpty
		ifTrue: [ '' ]
		ifFalse: [ self last errorUpToEnd ]
! !

!ProxyPipeline methodsFor: 'streaming' stamp: 'dtl 2/8/2020 17:08'!
errorUpToEndOfFile
	"Answer all available characters from the error stream. Block and
	continue reading until end of file is detected."

	^ self isEmpty
		ifTrue: [ '' ]
		ifFalse: [ self last errorUpToEndOfFile ]

! !

!ProxyPipeline methodsFor: 'streaming' stamp: 'dtl 11/21/2002 18:10'!
flush
	"Flush output to the standard input stream of my first proxy."

	^ self first flush! !

!ProxyPipeline methodsFor: 'streaming' stamp: 'dtl 2/8/2020 17:26'!
next

	^ self isEmpty
		ifTrue: []
		ifFalse: [self last next]
! !

!ProxyPipeline methodsFor: 'streaming' stamp: 'dtl 2/8/2020 17:38'!
next: count

	^ self isEmpty
		ifTrue: [ '' ]
		ifFalse: [self last next: count]
! !

!ProxyPipeline methodsFor: 'streaming' stamp: 'dtl 2/8/2020 17:38'!
nextFromError: count
	"Answer up to count characters from the error pipeline stream, or an empty string
	if no data is available. All characters are routed through the errorPipelineStream,
	which is shared by all my proxies."

	^ self isEmpty
		ifTrue: [ '' ]
		ifFalse: [self last errorPipelineStream next: count]
! !

!ProxyPipeline methodsFor: 'streaming' stamp: 'dtl 11/21/2002 18:09'!
nextPut: aCharacter
	"Write aCharacter to the standard input stream of my first proxy."

	^ self first nextPut: aCharacter! !

!ProxyPipeline methodsFor: 'streaming' stamp: 'dtl 11/21/2002 18:09'!
nextPutAll: characters
	"Write characters to the standard input stream of my first proxy."

	^ self first nextPutAll: characters! !

!ProxyPipeline methodsFor: 'streaming' stamp: 'dtl 2/8/2020 17:38'!
output

	^ self isEmpty
		ifTrue: [ '' ]
		ifFalse: [self last output]! !

!ProxyPipeline methodsFor: 'streaming' stamp: 'dtl 2/8/2020 17:39'!
upToEnd
	"Answer all available characters from the output stream."

	^ self isEmpty
		ifTrue: [ '' ]
		ifFalse: [self last upToEnd]
! !

!ProxyPipeline methodsFor: 'streaming' stamp: 'dtl 2/8/2020 17:39'!
upToEndOfFile
	"Answer all available characters from the output stream. Block and
	continue reading until end of file is detected."

	^ self isEmpty
		ifTrue: [ '' ]
		ifFalse: [self last upToEndOfFile]
! !

!ProxyPipeline methodsFor: 'finalization' stamp: 'dtl 4/9/2006 09:43'!
finalize

	self closePipes.
	^ super finalize
! !

!ProxyPipeline methodsFor: 'event handling' stamp: 'dtl 2/8/2020 17:17'!
handleCompletionWhenSignaled: aSemaphore
	"Answer a process that will complete processing the the last proxy has
	signaled its completion."

	^ [aSemaphore wait.
		self waitForAllToComplete.
		self isEmpty
			ifFalse: [ self last closeErrorPipeline.
				self triggerEvent: #complete ] ] fork
! !

!ProxyPipeline methodsFor: 'event handling' stamp: 'dtl 2/8/2020 17:20'!
handleRunstateChange

	(self isEmpty not and: [self last isComplete])
		ifTrue: [self completionSemaphore signal]! !

!ProxyPipeline methodsFor: 'event handling' stamp: 'dtl 11/20/2006 12:43'!
waitForAllToComplete
	"In some cases the last proxy in a pipeline may complete before some
	of the others. In particular, if one proxy has redirected its output to
	a file, the next proxy will see a nil input stream, and may quickly
	complete its processing before its predecessor proxies have finished
	writing to the file. Time out with an error if pipeline fails to complete
	after 10 seconds."

	(1 to: 100) do: [:e |
		self isComplete ifTrue: [^ self].
		(Delay forMilliseconds: 100) wait].
	self error: 'pipeline did not complete evaluation'

! !

!ProxyPipeline methodsFor: 'updating' stamp: 'dtl 8/22/2006 06:28'!
update: aParameter

	aParameter == self pipeFromOutput
		ifTrue: [^ self triggerEvent: #outputDataReady].
	aParameter == self errorPipelineStream
		ifTrue: [^ self triggerEvent: #errorDataReady].
	aParameter == #runState
		ifTrue: [^ self handleRunstateChange].
	self error: 'unexpected parameter'

! !

!ProxyPipeline methodsFor: 'evaluation' stamp: 'dtl 8/28/2012 07:44'!
value
	"Initiate evaluation of each member of the pipeline, and answer the
	last proxy in the pipeline. Evaluation may proceed asynchronously, and
	the sender should wait for the last proxy to complete its evalation in order
	to obtain complete output and error contents from the pipeline."

	"(ProxyPipeline command: 'ls | cat | wc' shell: CommandShell new) value"

	self completionWatcher: (self handleCompletionWhenSignaled: self completionSemaphore).
	self do: [:proxy |
		proxy value.
		"A proxy may have associated Smalltalk processes for stream handling.
		Schedule a short delay to permit these processes to be started prior to
		starting the next proxy in the pipeline."
		(Delay forMilliseconds: 10) wait]
! !

!ProxyPipeline class methodsFor: 'command processing' stamp: 'dtl 1/24/2013 08:39'!
command: aCommandString
	"Evaluate a new instance created from aCommandString. Sender is responsible
	for closing the pipes with #closePipes or #finalize."

	"ProxyPipeline command: 'ls | cat | wc'"
	"ProxyPipeline command: 'ls NOSUCHFILE * | cat | wc'"
	"ProxyPipeline command: 'ls | copyToOutput | wc'"
	"ProxyPipeline command: ''"

	Smalltalk at: #CommandShell
		ifPresent: [ :cls | ^ self command: aCommandString shell: cls new ].
	self notify: 'CommandShell not found'
! !

!ProxyPipeline class methodsFor: 'command processing' stamp: 'dtl 4/27/2003 11:32'!
command: aCommandString shell: aCommandShell
	"Evaluate a new instance created from aCommandString using aCommandShell.
	Sender is responsible for closing the pipes #closePipes or #finalize."

	"ProxyPipeline command: 'ls | cat | wc' shell: CommandShell new"
	"ProxyPipeline command: 'ls NOSUCHFILE * | cat | wc' shell: CommandShell new"
	"ProxyPipeline command: 'ls | copyToOutput | wc' shell: CommandShell new "
	"ProxyPipeline command: '' shell: CommandShell new"

	^ (self fromString: aCommandString shell: aCommandShell) value
! !

!ProxyPipeline class methodsFor: 'instance creation' stamp: 'dtl 6/8/2006 06:57'!
fromString: aCommandString shell: aCommandShell
	"Answer a new instance created from aCommandString using aCommandShell."

	"ProxyPipeline fromString: 'ls | cat | wc' shell: CommandShell new"
	"ProxyPipeline fromString: 'ls NOSUCHFILE * | cat | wc' shell: CommandShell new"
	"ProxyPipeline fromString: 'ls | copyToOutput | wc' shell: CommandShell new "
	"ProxyPipeline fromString: '' shell: CommandShell new"

	^ super new fromString: aCommandString shell: aCommandShell
! !

!CommandShellTranscript methodsFor: 'accessing' stamp: 'dtl 6/24/2001 19:09'!
activeController
	"In Morphic, alway nil. In MVC, the controller that most recently invoked
	a command."

	^ activeController! !

!CommandShellTranscript methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:28'!
activeController: aController
	"In Morphic, alway nil. In MVC, the controller that most recently invoked
	a command."

	activeController := aController! !

!CommandShellTranscript methodsFor: 'accessing' stamp: 'dtl 1/17/2007 06:28'!
characterLimit
	"Tell the views how much to retain on screen"
	^ 20000! !

!CommandShellTranscript methodsFor: 'accessing' stamp: 'dtl 12/11/2007 19:00'!
cliShell
	"Answer the value of cliShell"

	^ cliShell ifNil: [cliShell := CommandShell new]! !

!CommandShellTranscript methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:28'!
cliShell: commandShell
	"Set the value of cliShell"

	cliShell := commandShell! !

!CommandShellTranscript methodsFor: 'accessing' stamp: 'dtl 1/22/2007 21:24'!
keyboardConnector

	^ self cliShell keyboardConnector! !

!CommandShellTranscript methodsFor: 'accessing' stamp: 'dtl 12/11/2007 20:18'!
labelStringBlock
	"Answer a block that when evaluated answers a string to be used
	as the window label."

	^ labelStringBlock ifNil: [labelStringBlock := self defaultLabelStringBlock]! !

!CommandShellTranscript methodsFor: 'accessing' stamp: 'dtl 12/11/2007 20:16'!
labelStringBlock: aBlockAnsweringAString

	labelStringBlock := aBlockAnsweringAString! !

!CommandShellTranscript methodsFor: 'accessing' stamp: 'dtl 1/20/2007 11:44'!
lastPromptString
	"Answer the value of lastPromptString"

	^ lastPromptString ifNil: [lastPromptString := self cliShell promptString]! !

!CommandShellTranscript methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:28'!
lastPromptString: anObject
	"Set the value of lastPromptString"

	lastPromptString := anObject! !

!CommandShellTranscript methodsFor: 'stream extensions' stamp: 'dtl 1/17/2007 06:29'!
bs
	self position > 0 ifTrue: [^ self skip: -1].
	self changed: #bs! !

!CommandShellTranscript methodsFor: 'stream extensions' stamp: 'dtl 1/17/2007 06:29'!
clear
	"Clear all characters and redisplay the view"
	self changed: #clearText.
	self reset! !

!CommandShellTranscript methodsFor: 'stream extensions' stamp: 'dtl 1/17/2007 06:29'!
endEntry
	"Display all the characters since the last endEntry, and reset the stream"
	self changed: #appendEntry.
	self reset! !

!CommandShellTranscript methodsFor: 'stream extensions' stamp: 'dtl 1/17/2007 06:29'!
flush
	self endEntry! !

!CommandShellTranscript methodsFor: 'stream extensions' stamp: 'dtl 12/11/2007 21:35'!
nextPut: anObject 

	self scheduleToEvaluate:
		[super nextPut: anObject]! !

!CommandShellTranscript methodsFor: 'stream extensions' stamp: 'dtl 12/11/2007 21:35'!
nextPutAll: characters
	"Convert line terminators to cr. Note that #nextPut: does not do this conversion."

	self scheduleToEvaluate:
		[characters isEmpty ifFalse:
			[super nextPutAll: (characters copyReplaceAll: String lf with: String cr).
			self flush]]! !

!CommandShellTranscript methodsFor: 'stream extensions' stamp: 'dtl 1/17/2007 06:29'!
pastEndPut: anObject
	"If the stream reaches its limit, just output the contents and reset."
	self endEntry.
	^ self nextPut: anObject! !

!CommandShellTranscript methodsFor: 'stream extensions' stamp: 'dtl 1/17/2007 06:29'!
show: anObject  "TextCollector compatibility"
	self nextPutAll: anObject asString; endEntry! !

!CommandShellTranscript methodsFor: 'input character filtering' stamp: 'dtl 11/8/2007 19:38'!
checkSttyForEvent: keyboardEvent
	"Check for interrupt characters and such. Consume interrupt character and
	answer nil, otherwise answer keyboardEvent."

	(self isInterruptEvent: keyboardEvent)
		ifTrue:
			[self handleInterruptCharacterEvent.
			^ nil].
	(self isEndOfFileEvent: keyboardEvent)
		ifTrue:
			[self cliShell doEndOfFile.
			^ nil].
	^ keyboardEvent! !

!CommandShellTranscript methodsFor: 'input character filtering' stamp: 'dtl 11/8/2007 20:29'!
confirmBeforeKilling: externalProxies
	"Interrupt character detected, do interrupt stuff."

	| msgStrm |
	(externalProxies size > 0)
		ifTrue:
			[msgStrm := WriteStream on: String new.
			(externalProxies size > 1)
				ifTrue: [msgStrm nextPutAll: 'kill processes']
				ifFalse: [msgStrm nextPutAll: 'kill process'].
			externalProxies do: [:e | msgStrm nextPutAll: ' ', e pid printString, ' (', e programName, ')'].
			msgStrm nextPut: $?.
			(self confirm: msgStrm contents)
				ifTrue:
					[externalProxies reverseDo: [:e | e terminate]]]
! !

!CommandShellTranscript methodsFor: 'input character filtering' stamp: 'dtl 1/20/2007 09:42'!
filterAndForward: aCharacter
	"Filter aCharacter, taking special action if needed. If a child process is active,
	forward aCharacter to the child and answer nil. Otherwise answer aCharacter."

	^ self cliShell filterAndForward: aCharacter! !

!CommandShellTranscript methodsFor: 'input character filtering' stamp: 'dtl 11/7/2007 06:54'!
filterAndForwardEvent: keyboardEvent 
	"Filter keyboardEvent, taking special action if needed. If a child process
	is active, forward keyboardEvent to the child and answer nil. Otherwise
	answer keyboardEvent."

	^ (self checkSttyForEvent: keyboardEvent)
		ifNotNil: [self cliShell filterAndForwardEvent: keyboardEvent]! !

!CommandShellTranscript methodsFor: 'input character filtering' stamp: 'dtl 11/8/2007 19:38'!
handleInterruptCharacterEvent
	"Interrupt character detected, do interrupt stuff."

	self confirmBeforeKilling: (self cliShell foregroundProxies
		select: [:e | e isExternalProcess]
		thenCollect: [:r | r processProxy]).
	self confirmBeforeKilling: (self cliShell backgroundProxies
		select: [:e | e isExternalProcess]
		thenCollect: [:r | r processProxy]).
! !

!CommandShellTranscript methodsFor: 'input character filtering' stamp: 'dtl 12/25/2007 16:30'!
isEndOfFileEvent: keystrokeEvent 
	"A <ctl>d event, represented either as character value 4, or as $d with
	the control or meta key. The actual representation varies on different
	versions of Squeak."

	^ keystrokeEvent keyValue == 4
		or: [keystrokeEvent keyCharacter = $d
				and: [keystrokeEvent controlKeyPressed]]! !

!CommandShellTranscript methodsFor: 'input character filtering' stamp: 'dtl 12/25/2007 16:30'!
isInterruptEvent: keystrokeEvent 
	"A <ctl>c event, represented either as character value 3, or as $c with
	the control or meta key. The actual representation varies on different
	versions of Squeak."

	^ keystrokeEvent keyValue == 3
		or: [keystrokeEvent keyCharacter = $c
				and: [keystrokeEvent controlKeyPressed]]! !

!CommandShellTranscript methodsFor: 'initialize-release' stamp: 'dtl 1/20/2007 11:56'!
close

	super close.
	self changed: #exit! !

!CommandShellTranscript methodsFor: 'initialize-release' stamp: 'dtl 12/11/2007 20:31'!
open

	^ self openLabel: nil "invoke default label setting block"! !

!CommandShellTranscript methodsFor: 'initialize-release' stamp: 'dtl 12/11/2007 20:30'!
openAsMorphLabel: labelString 
	"Build a morph viewing this stream"

	| window textMorph |
	window := SystemWindow new model: self.
	textMorph := ShellWindowMorph
					on: self
					text: nil
					accept: nil
					readSelection: nil
					menu: #codePaneMenu:shifted:.
	textMorph acceptOnCR: true.
	window addMorph: textMorph frame: (0@0 corner: 1@1).
	self prompt.
	labelString ifNotNil: [self labelStringBlock: [labelString]].
	self changed: #relabel.
	^ window! !

!CommandShellTranscript methodsFor: 'initialize-release' stamp: 'ThierryGoubier 9/20/2013 15:20'!
openLabel: aString 
	"Open a window on this stream. This is copied from the corresponding method in
	TranscriptStream."

	| topView controllerClass codeView |
	CommandShell isMorphic ifTrue: [^ (self openAsMorphLabel: aString) openInWorld].

	aString ifNotNil: [self labelStringBlock: [aString]].
	topView := (Smalltalk at: #StandardSystemView) new.
	controllerClass := Smalltalk
		at: #DeferredActionStandardSystemController
		ifAbsent: [(Smalltalk at: #StandardSystemController)].	
	topView model: self;
			controller: controllerClass new;
			borderWidth: 1;
			label: aString;
			minimumSize: 100 @ 50.
	codeView := (Smalltalk at: #ShellWindowView)
					on: self
					text: nil
					accept: nil
					readSelection: nil
					menu: #codePaneMenu:shifted:.
	codeView window: (0@0 extent: 200@200).
	topView addSubView: codeView.
	topView controller addDeferredUIMessage:
		[self changed: #relabel.
		self prompt].
	topView controller open.
! !

!CommandShellTranscript methodsFor: 'model protocol' stamp: 'dtl 6/17/2015 21:22'!
codePaneMenu: aMenu shifted: shifted
	"Note that unless we override perform:orSendTo:, PluggableTextController will respond
	to all menu items.

	If StringHolder is not present, try to delegate to Workspace instead."

	^ (Smalltalk
		at: #StringHolder
		ifAbsent: [Smalltalk
				at: #Workspace
				ifAbsent: [^ self ]]) basicNew codePaneMenu: aMenu shifted: shifted! !

!CommandShellTranscript methodsFor: 'model protocol' stamp: 'dtl 12/11/2007 20:19'!
defaultLabelStringBlock

	^ [ | directoryString |
	directoryString := self cliShell workingDirectory.
	directoryString isEmpty ifTrue: [directoryString := self cliShell shellSyntax nullDirectoryString].
	self class defaultWindowName, ': ', directoryString]
! !

!CommandShellTranscript methodsFor: 'model protocol' stamp: 'dtl 12/11/2007 20:20'!
labelString

	^ self labelStringBlock value
! !

!CommandShellTranscript methodsFor: 'model protocol' stamp: 'dtl 1/17/2007 06:29'!
perform: selector orSendTo: otherTarget
	"Selector was just chosen from a menu by a user.  If can respond, then
	perform it on myself. If not, send it to otherTarget, presumably the
	editPane from which the menu was invoked."

	(self respondsTo: selector)
		ifTrue: [^ self perform: selector]
		ifFalse: [^ otherTarget perform: selector]! !

!CommandShellTranscript methodsFor: 'command prompt' stamp: 'dtl 4/8/2018 12:19'!
newLine

	self scheduleToEvaluate:
		[self show: ''.
		self restoreSelectionMarker]! !

!CommandShellTranscript methodsFor: 'command prompt' stamp: 'dtl 12/11/2007 21:36'!
prompt

	self scheduleToEvaluate:
		[self show: self cliShell promptString.
		self restoreSelectionMarker]! !

!CommandShellTranscript methodsFor: 'command prompt' stamp: 'dtl 1/20/2007 11:46'!
promptString
	"Dependents call this when restoring the prompt string display"

	self flag: #FIXME. "change the dependents to call #lastPromptString"
	^ self lastPromptString! !

!CommandShellTranscript methodsFor: 'command prompt' stamp: 'dtl 4/8/2018 12:17'!
promptTwo

	self scheduleToEvaluate:
		[self show: self cliShell promptStringTwo.
		self restoreSelectionMarker]! !

!CommandShellTranscript methodsFor: 'command prompt' stamp: 'dtl 1/20/2007 11:40'!
restorePrompt

	self flag: #FIXME. "remember last prompt string and redisplay it"
	self prompt! !

!CommandShellTranscript methodsFor: 'command prompt' stamp: 'dtl 11/30/2010 07:33'!
restoreSelectionMarker
	"Restore selection marker in MVC"

	| c |
	CommandShell isMorphic
		ifFalse:
			[c := self activeController.
			self scheduleToEvaluate: [c initializeSelection]]
! !

!CommandShellTranscript methodsFor: 'evaluation' stamp: 'dtl 9/15/2012 18:59'!
processCommand: aCommandString
	"Evaluate aCommandString in a separate Smalltalk process. This permits the
	user interface to remain responsive."

	^ self processCommand: aCommandString echo: true
! !

!CommandShellTranscript methodsFor: 'evaluation' stamp: 'dtl 9/15/2012 18:56'!
processCommand: aCommandString echo: showCommand
	"Evaluate aCommandString in a separate Smalltalk process. This permits the
	user interface to remain responsive. If showCommand is true, update dependent
	views in order to display the command."

	^ self cliShell processCommand: aCommandString echo: showCommand
! !

!CommandShellTranscript methodsFor: 'evaluation' stamp: 'dtl 6/29/2010 22:15'!
scheduleToEvaluate: aBlock
	"Evaluate aBlock, typically to create a new scheduled window. Make it work in
	both Morphic and MVC. In Morphic, just evaluate aBlock, but in MVC, put it in
	a queue for evaluation within a control loop. This method may be sent from
	a process running independent of MVC controller scheduling.
	
	Newer Squeak images implement #addDeferredUIMessage in the current
	project, eliminating the need for an #isMorphic test. This mechanism is not
	available for older images or for Pharo."

	CommandShell isMorphic
		ifTrue: [WorldState addDeferredUIMessage: aBlock]
		ifFalse: [self activeController ifNotNil: [activeController addDeferredUIMessage: aBlock]]! !

!CommandShellTranscript methodsFor: 'updating' stamp: 'dtl 4/8/2018 12:13'!
update: event

	event == #prompt	"display $PS1"
		ifTrue: [^ self prompt].
	event == #alternatePrompt	"display $PS2"
		ifTrue: [^ self promptTwo].
	event == #restorePrompt	"restore last prompt display"
		ifTrue: [self flag: #FIXME. ^ self prompt].
	event == #newLine
		ifTrue: [^ self newLine].
	event == #exit
		ifTrue: [^ self close].
	event == #clearText
		ifTrue: [^ self clear].
	event == #interruptCharacter
		ifTrue: [^ self handleInterruptCharacterEvent].
	event == #relabel
		ifTrue: [^ self changed: event].
	"Treat anything other than the symbols above as a string to be displayed on
	the command line in the view"
	self show: event asString; cr.
! !

!CommandShellTranscript methodsFor: 'preferences' stamp: 'dtl 2/15/2018 19:38'!
windowColorToUse
	"Recent Squeak images have user interface themes that are tied to preferences
	in class Model. CommandShellTranscript is used as a model, but does not inherit	
	from Model. Defer to the default window color for a model."

	^ Model new windowColorToUse! !

!CommandShellTranscript methodsFor: 'Cuis text model' stamp: 'dtl 5/3/2020 14:40:32'!
editorClass
	^self class! !

!CommandShellTranscript methodsFor: 'Cuis text model' stamp: 'dtl 5/3/2020 15:41:30'!
model
	^ model! !

!CommandShellTranscript methodsFor: 'Cuis text model' stamp: 'dtl 5/3/2020 15:41:22'!
model: aModel
	model := aModel! !

!CommandShellTranscript methodsFor: 'Cuis text model' stamp: 'dtl 5/3/2020 15:40:33'!
morph
	^ morph! !

!CommandShellTranscript methodsFor: 'Cuis text model' stamp: 'dtl 5/3/2020 14:42:08'!
morph: aMorph
	morph := aMorph! !

!CommandShellTranscript methodsFor: 'Cuis text model' stamp: 'dtl 5/3/2020 14:38:42'!
refetch
	"Nothing here. Answer true if actualContents was actually fetched."
	^false! !

!CommandShellTranscript class methodsFor: 'instance creation' stamp: 'dtl 1/20/2007 10:32'!
commandShell: cliShell

	| ttyDisplay |
	ttyDisplay := self new cliShell: cliShell.
	cliShell outputStream: ttyDisplay; errorStream: ttyDisplay.
	cliShell addDependent: ttyDisplay.
	^ ttyDisplay
! !

!CommandShellTranscript class methodsFor: 'instance creation' stamp: 'dtl 1/17/2007 06:29'!
new

	^ (self on: (String new: 1000)) initialize! !

!CommandShellTranscript class methodsFor: 'instance creation' stamp: 'dtl 1/17/2007 06:29'!
open
	"CommandShell open"

	^ self new open! !

!CommandShellTranscript class methodsFor: 'instance creation' stamp: 'dtl 1/17/2007 06:29'!
openLabel: aString

	"CommandShell openLabel: self defaultWindowName"

	^ self new openLabel: aString
! !

!CommandShellTranscript class methodsFor: 'defaults' stamp: 'dtl 4/11/2018 21:12'!
defaultWindowName

	^ 'Command Shell'! !

!CommandShellTranscript class methodsFor: 'window color' stamp: 'dtl 4/11/2018 21:12'!
windowColorSpecification
	"Answer a WindowColorSpec object that declares my preference"

	| windowColorSpec |
	windowColorSpec := Smalltalk
				at: #WindowColorSpec
				ifAbsent: [^ self error: 'this image does not support WindowColorSpec'].
	^ windowColorSpec
		classSymbol: self name
		wording: 'Command Shell'
		brightColor: (Color lightGray lighter paler)
		pastelColor: (Color lightGray lighter lighter paler paler)
		helpMessage: 'CommandShell window for evaluating Smalltalk and OS commands'! !

!InternalPipe methodsFor: 'finalization' stamp: 'dtl 4/20/2003 20:34'!
addDummyNilAsEndOfFileIndicatorForBlockingPipe
	"And add a trailing nil to the pipe to mimic the behaviour of an external pipe
	which blocks until the writer end is closed. Writing a trailing nil the the queue
	has the side effect of waking up any process which is blocked waiting on the
	queue, which will receive the nil as an indication that the pipe has been closed.
	FIXME: This is almost certainly a Bad Idea, so it is encapsulated in its own method."

	self isBlocking ifTrue: [queue nextPut: nil]
! !

!InternalPipe methodsFor: 'finalization' stamp: 'dtl 1/1/2002 11:38'!
close

	self closeWriter; closeReader! !

!InternalPipe methodsFor: 'finalization' stamp: 'dtl 4/26/2020 12:45'!
closeReader
	"Protocol compatibility with OSPipe."! !

!InternalPipe methodsFor: 'finalization' stamp: 'dtl 4/20/2003 20:46'!
closeWriter
	"Set the writerClosed flag, and add a trailing nil to the pipe to mimic the
	behaviour of an external pipe which blocks until the writer end is closed.
	Writing a trailing nil the the queue has the side effect of waking up any
	process which is blocked waiting on the queue, which will receive the nil
	as an indication that the pipe has been closed."

	self writerClosed ifFalse:
		[self writerClosed: true.
		self addDummyNilAsEndOfFileIndicatorForBlockingPipe.
		self notifyDataReady	"in case someone is waiting on the pipe output"]

! !

!InternalPipe methodsFor: 'testing' stamp: 'dtl 12/26/2002 19:09'!
atEnd
	"Answer whether the receiver can access any more objects. A nonblocking
	pipe with writer end closed which answers nil is considered to be at end.
	See InternalPipe>>closeWriter. Yes, it is ugly to have a pipe which cannot
	pass a nil object, but this is intended to mimic the behavior of an external
	OS pipe in nonblocking mode."

	^ self writerClosed and:
		[self isBlocking
			ifTrue:
				[(queue size == 0) or:
					[(queue size == 1) and:
						[(queue nextPut: queue next) isNil]]]
			ifFalse:
				[queue size == 0]]
! !

!InternalPipe methodsFor: 'testing' stamp: 'dtl 6/4/2006 16:09'!
atEndOfFile
	"Answer whether the receiver is at its end based on the result of
	the last read operation. For compatibility with ExternalPipe."

	^ self atEnd
! !

!InternalPipe methodsFor: 'testing' stamp: 'dtl 11/24/2001 15:03'!
closed

	^ self writerClosed! !

!InternalPipe methodsFor: 'testing' stamp: 'dtl 8/7/2002 14:20'!
isBlocking
	"Answer true if reader end is set to blocking mode."

	^ self nonBlockingMode not! !

!InternalPipe methodsFor: 'testing' stamp: 'dtl 3/26/2006 15:48'!
isPipe

	^ true
! !

!InternalPipe methodsFor: 'accessing' stamp: 'dtl 1/25/2003 18:58'!
basicNext
	"Answer the next object accessible by the receiver."

	self nonBlockingMode
		ifFalse:
			[^ queue next]
		ifTrue:
			[queue isEmpty ifTrue: [^ nil] ifFalse: [^ queue next]]
! !

!InternalPipe methodsFor: 'accessing' stamp: 'dtl 1/7/2003 20:23'!
basicNextPut: anObject 
	"Insert the argument, anObject, as the next object accessible by the 
	receiver. Answer anObject."

	^ queue nextPut: anObject! !

!InternalPipe methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:33'!
contents
	"Answer contents of the pipe, and return the contents to the pipe so it can still be read."

	"InternalPipe new nextPutAll: 'hello'; contents"

	| s |
	s := self next: queue size.
	self nextPutAll: s.
	^ s! !

!InternalPipe methodsFor: 'accessing' stamp: 'dtl 3/26/2006 11:23'!
next
	"Answer the next object accessible by the receiver."

	^ self basicNext
! !

!InternalPipe methodsFor: 'accessing' stamp: 'dtl 2/24/2013 10:24'!
next: anInteger 
	"Answer the next anInteger elements of my collection."

	| strm c |
	strm := WriteStream on: String new.
	(1 to: anInteger) do: [:index |
		self atEnd
			ifTrue: [^ strm contents]
			ifFalse: [(c := self basicNext) ifNil: [^ strm contents].
					strm nextPut: c]].
	^ strm contents
! !

!InternalPipe methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:33'!
nextPut: anObject 
	"Insert the argument, anObject, as the next object accessible by the 
	receiver. Answer anObject."

	| result |
	result := queue nextPut: anObject.
	self notifyDataReady.
	Processor yield.
	^ result
! !

!InternalPipe methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:33'!
nextPutAll: aCollection 
	"Append the elements of aCollection to the sequence of objects accessible 
	by the receiver. Answer aCollection."

	| result |
	result := aCollection do: [:e | queue nextPut: e].
	self notifyDataReady.
	Processor yield.
	^ result
! !

!InternalPipe methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:33'!
nonBlockingMode

	^ nonBlockingMode ifNil: [nonBlockingMode := false]
! !

!InternalPipe methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:33'!
nonBlockingMode: trueOrFalse

	nonBlockingMode := trueOrFalse
! !

!InternalPipe methodsFor: 'accessing' stamp: 'dtl 9/16/2001 22:42'!
peek

	^ queue peek
! !

!InternalPipe methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:34'!
queue

	^ queue ifNil: [queue := SharedQueue new]
! !

!InternalPipe methodsFor: 'accessing' stamp: 'dtl 11/25/2001 19:15'!
size
	"An InternalPipe may contain a trailing nil if it has been closed. This should
	not be counted as part of the pipe size, so use #contents to determine the size
	after stripping any trailing nil."

	"InternalPipe new nextPutAll: 'hello'; size"

	^ self closed
		ifTrue: [self contents size]
		ifFalse: [self queue size]
! !

!InternalPipe methodsFor: 'accessing' stamp: 'dtl 2/24/2013 10:24'!
upToEnd
	"Answer the remaining elements in the pipe"

	| strm c |
	strm := WriteStream on: String new.
	[self atEnd] whileFalse:
		[c := self next.
		c isNil
			ifTrue: [^ strm contents]
			ifFalse: [strm nextPut: c]].
	^ strm contents! !

!InternalPipe methodsFor: 'accessing' stamp: 'dtl 5/20/2006 18:45'!
upToEndOfFile
	"For compatibility with external pipes"

	^ self upToEnd
! !

!InternalPipe methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:34'!
writerClosed

	^ writerClosed ifNil: [writerClosed := false]
! !

!InternalPipe methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:34'!
writerClosed: trueOrFalse

	writerClosed := trueOrFalse
! !

!InternalPipe methodsFor: 'character writing' stamp: 'dtl 9/23/2001 16:49'!
cr
	"Append a return character to the receiver."

	self queue nextPut: Character cr! !

!InternalPipe methodsFor: 'initialize-release' stamp: 'dtl 9/16/2001 22:35'!
initialize

	self queue
! !

!InternalPipe methodsFor: 'initialize-release' stamp: 'dtl 11/25/2001 14:33'!
setBlocking
	"For compatibility with OSPipe"

	self nonBlockingMode: false! !

!InternalPipe methodsFor: 'initialize-release' stamp: 'dtl 11/24/2001 15:56'!
setNonBlocking
	"For compatibility with OSPipe"

	self nonBlockingMode: true! !

!InternalPipe methodsFor: 'event driven reader' stamp: 'dtl 1/7/2003 20:23'!
notifyDataReady
	"Whenever new data becomes available, notify any dependents. This method
	exists only to document the event generation mechanism, which is intended
	to be compatible with events generated by an OSPipe."

	self changed
! !

!InternalPipe methodsFor: 'event driven reader' stamp: 'dtl 1/7/2003 20:31'!
setBufferedReader
	"An InternalPipe behaves like an OSPipe with a buffered reader, and is
	capable of generating events when data is available. Answer true to
	indicate that this is the case."

	^ true
! !

!InternalPipe class methodsFor: 'instance creation' stamp: 'dtl 12/2/2001 19:24'!
blockingPipe

	"InternalPipe blockingPipe"

	^ super basicNew initialize setBlocking
! !

!InternalPipe class methodsFor: 'instance creation' stamp: 'dtl 12/2/2001 19:25'!
new

	"InternalPipe new"

	^ self blockingPipe! !

!InternalPipe class methodsFor: 'instance creation' stamp: 'dtl 12/2/2001 19:24'!
nonBlockingPipe

	"InternalPipe nonBlockingPipe"

	^ super basicNew initialize setNonBlocking
! !

!InternalPipe class methodsFor: 'examples' stamp: 'dtl 11/8/2007 20:33'!
testPipe

	"InternalPipe testPipe inspect"

	| pipe result |
	pipe := self new.
	pipe nextPutAll: 'string to send through an InternalPipe'.
	pipe closeWriter.
	result := pipe upToEnd.
	pipe close.
	^ result
! !

!CommandShellTestCase methodsFor: 'accessing' stamp: 'dtl 8/26/2006 17:30'!
checkFileHandleCount
	"If true, attempt to count the number of open file handles before and after
	tests. This uses the /proc file system on Linux, and may work on other systems
	which support a /proc file system."

	^ CheckFileHandleCount! !

!CommandShellTestCase methodsFor: 'accessing' stamp: 'dtl 1/26/2013 12:18'!
procDir
	"Assuming that we have a /proc file system as on Linux (otherwise answer nil)"

	| path |
	^ procDir ifNil:
		[path := '/proc/' , OSProcess thisOSProcess pid printString, '/fd'.
		(CommandShell directoryExists: path) ifTrue: [procDir := path]]
! !

!CommandShellTestCase methodsFor: 'private' stamp: 'dtl 12/20/2007 14:54'!
isNumberOfOpenFiles: anInteger
	"Answer true if the number of open file handles is anInteger. Wait a little
	bit if necessary to clean up stale references, but give up after a few tries."

	| loops milliseconds |
	self checkFileHandleCount ifFalse: [^ true]. "Bypass the test"
	loops := 10.
	milliseconds := 50.
	(1 to: loops)
		detect:
			[:i | (self numberOfOpenFiles == anInteger)
				ifFalse:
					[(Delay forMilliseconds: milliseconds) wait].
			self numberOfOpenFiles == anInteger]
		ifNone:
			["This causes the failure to appear as an error rather than a
			failure in the test runner. This kind of problem can be appear
			intermittently, and is different from a functional failure of
			a method."
			self error:
				self numberOfOpenFiles printString,
				' files are open, expected ', anInteger printString].
	^ self numberOfOpenFiles == anInteger
! !

!CommandShellTestCase methodsFor: 'private' stamp: 'dtl 1/26/2013 12:22'!
numberOfOpenFiles
	"Answer the number of files currently open for this OS process. This works
	only on a system with a /proc filesystem and file descriptors located in a
	directory called /proc/<pid>/fd. On other systems, just answer 0."

	"CommandShellTestCase new numberOfOpenFiles"

	| d |
	self checkFileHandleCount ifFalse: [^ 0]. "Bypass the test"
	^ (d := self procDir) isNil
		ifTrue: [0]
		ifFalse: [(CommandShell directoryEntryNames: d) size]! !

!CommandShellTestCase methodsFor: 'running' stamp: 'dtl 3/9/2002 19:56'!
runAll
	"Functional failures will be reported as failures, and problems with number
	of open file handles will be reported as errors (they can be intermittent and
	possibly bogus). Note: setting checkFileHandleCount to true here forces a
	count check after all the tests are run. The individual tests may or may
	not do the file count check, depending on what is done in the #setUp method."

	"CommandShellTestCase new checkFileHandleCount: true; runAll"
	"CommandShellTestCase new checkFileHandleCount: false; runAll"

	| result suite openFileCount |
	suite := TestSuite new.
	openFileCount := self numberOfOpenFiles.
	suite addTest: (CommandShellTestCase selector: #testPipeline01).
	suite addTest: (CommandShellTestCase selector: #testPipeline02).
	suite addTest: (CommandShellTestCase selector: #testPipeline03).
	suite addTest: (CommandShellTestCase selector: #testPipeline04).
	suite addTest: (CommandShellTestCase selector: #testPipeline05).
	suite addTest: (CommandShellTestCase selector: #testPipeline06).
	suite addTest: (CommandShellTestCase selector: #testPipeline07).
	suite addTest: (CommandShellTestCase selector: #testPipeline08).
	suite addTest: (CommandShellTestCase selector: #testPipeline09).
	suite addTest: (CommandShellTestCase selector: #testPipeline10).
	suite addTest: (CommandShellTestCase selector: #testPipeline11).
	suite addTest: (CommandShellTestCase selector: #testPipeline12).
	suite addTest: (CommandShellTestCase selector: #testPipeline13).
	suite addTest: (CommandShellTestCase selector: #testPipeline14).
	suite addTest: (CommandShellTestCase selector: #testPipeline20).
	suite addTest: (CommandShellTestCase selector: #testPipeline21).
	suite addTest: (CommandShellTestCase selector: #testPipeline22).
	suite addTest: (CommandShellTestCase selector: #testPipeline23).
	suite addTest: (CommandShellTestCase selector: #testPipeline24).
	suite addTest: (CommandShellTestCase selector: #testPipeline25).
	suite addTest: (CommandShellTestCase selector: #testPipeline26).
	suite addTest: (CommandShellTestCase selector: #testPipeline27).
	suite addTest: (CommandShellTestCase selector: #testPipeline28).
	suite addTest: (CommandShellTestCase selector: #testPipeline30).
	suite addTest: (CommandShellTestCase selector: #testPipeline31).
	suite addTest: (CommandShellTestCase selector: #testPipeline32).
	suite addTest: (CommandShellTestCase selector: #testPipeline33).
	suite addTest: (CommandShellTestCase selector: #testPipeline34).
	suite addTest: (CommandShellTestCase selector: #testPipeline35).
	suite addTest: (CommandShellTestCase selector: #testPipeline36).
	suite addTest: (CommandShellTestCase selector: #testPipeline37).
	suite addTest: (CommandShellTestCase selector: #testPipeline38).
	suite addTest: (CommandShellTestCase selector: #testPipeline39).
	suite addTest: (CommandShellTestCase selector: #testPipeline40).
	suite addTest: (CommandShellTestCase selector: #testPipeline41).
	suite addTest: (CommandShellTestCase selector: #testPipeline42).
	suite addTest: (CommandShellTestCase selector: #testPipeline50).
	suite addTest: (CommandShellTestCase selector: #testPipeline51).
	suite addTest: (CommandShellTestCase selector: #testPipeline52).
	suite addTest: (CommandShellTestCase selector: #testPipeline53).
	suite addTest: (CommandShellTestCase selector: #testPipeline60).
	suite addTest: (CommandShellTestCase selector: #testPipeline61).
	suite addTest: (CommandShellTestCase selector: #testPipeline62).
	suite addTest: (CommandShellTestCase selector: #testPipeline63).
	suite addTest: (CommandShellTestCase selector: #testPipeline64).
	suite addTest: (CommandShellTestCase selector: #testPipeline65).
	suite addTest: (CommandShellTestCase selector: #testPipeline66).
	suite addTest: (CommandShellTestCase selector: #testPipeline70).
	suite addTest: (CommandShellTestCase selector: #testPipeline71).
	suite addTest: (CommandShellTestCase selector: #testPipeline72).
	suite addTest: (CommandShellTestCase selector: #testPipeline73).
	suite addTest: (CommandShellTestCase selector: #testPipeline74).
	suite addTest: (CommandShellTestCase selector: #testPipeline80).
	suite addTest: (CommandShellTestCase selector: #testPipeline81).
	suite addTest: (CommandShellTestCase selector: #testPipeline90).
	suite addTest: (CommandShellTestCase selector: #testPipeline91).
	suite addTest: (CommandShellTestCase selector: #testPipeline92).
	suite addTest: (CommandShellTestCase selector: #testPipeline93).
	suite addTest: (CommandShellTestCase selector: #testPipeline94).
	suite addTest: (CommandShellTestCase selector: #testPipeline95).
	result := suite run.
	self should: [result defects size == 0].
	self should: [self isNumberOfOpenFiles: openFileCount].
	^ result
! !

!CommandShellTestCase methodsFor: 'running' stamp: 'dtl 7/26/2010 13:39'!
setUp

	(self respondsTo: #timeout: ) "Recent Squeak images with test case timeout"
		ifTrue: [self perform: #timeout: with: 10].
	shell := CommandShell new! !

!CommandShellTestCase methodsFor: 'testing-expression evaluator' stamp: 'dtl 6/16/2019 10:43'!
testBangExpression
	"Bang character forces evaluation as a Smalltalk expression."

	"(CommandShellTestCase selector: #testBangExpression) debug"

	| pipelines procs openFileCount p o |
	openFileCount := self numberOfOpenFiles.
	self assert: shell outputStream contents isEmpty.
	self assert: shell outputStream isEmpty.
	pipelines := shell evaluateOrMakePipelinesFrom: 'Object new printString!!'.
	self assert: 1 equals: pipelines size.
	procs := pipelines last.
	p := procs last.
	self assert: p class == ExpressionEvaluator.
	o := procs output.
	self assert: (o isKindOf: String).
	self assert: o isEmpty.
	procs value.
	o := procs output.
	self deny: o isEmpty.
	self assert: shell outputStream isEmpty.
	self assert: (self isNumberOfOpenFiles: openFileCount)
! !

!CommandShellTestCase methodsFor: 'testing-expression evaluator' stamp: 'dtl 6/16/2019 10:45'!
testBangExpressionInPipeline
	"Input from 'who' command is ignored, and the Smalltalk expression should
	still be evaluated in the pipeline."

	"(CommandShellTestCase selector: #testBangExpressionInPipeline) debug"

	| pipelines procs openFileCount p o |
	openFileCount := self numberOfOpenFiles.
	self assert: shell outputStream contents isEmpty.
	self assert: shell outputStream isEmpty.
	pipelines := shell evaluateOrMakePipelinesFrom: 'who | Object new printString!!'.
	self assert: 1 equals: pipelines size.
	procs := pipelines last.
	p := procs last.
	self assert: p class == ExpressionEvaluator.
	o := procs output.
	self assert: (o isKindOf: String).
	self assert: o isEmpty.
	procs value.
	o := procs output.
	self deny: o isEmpty.
	self assert: shell outputStream isEmpty.
	self assert: (self isNumberOfOpenFiles: openFileCount)
! !

!CommandShellTestCase methodsFor: 'testing-expression evaluator' stamp: 'dtl 12/26/2007 09:42'!
testEvaluateOrMakePipelinesFrom

	"(CommandShellTestCase selector: #testEvaluateOrMakePipelinesFrom) debug"

	| command result firstPipeline secondPipeline thirdPipeline firstErrorMessage firstOutput openFileCount |

	openFileCount := self numberOfOpenFiles.
	command := 'ls NOSUCHFILE * | cat | dd | cat | wc; ps | cat& pwd | cat'.
	result := shell evaluateOrMakePipelinesFrom: command.
	result do: [:e | e value].
	self assert: result size == 3.
	firstPipeline := result at: 1.
	secondPipeline := result at: 2.
	thirdPipeline := result at: 3.
	firstOutput := firstPipeline output.
	self assert: ('   *' match: firstOutput).
	firstErrorMessage := firstPipeline errorUpToEnd.
	self assert: ('*NOSUCHFILE*' match: firstErrorMessage).
	self deny: secondPipeline output isEmpty.
	self assert: secondPipeline errorUpToEnd isEmpty.
	self deny: thirdPipeline output isEmpty.
	self assert: thirdPipeline errorUpToEnd isEmpty.
	self should: [self isNumberOfOpenFiles: openFileCount]! !

!CommandShellTestCase methodsFor: 'testing-expression evaluator' stamp: 'dtl 12/21/2007 12:30'!
testInvalidBangExpression
	"Bang forces evaluation as Smalltalk, with compiler error message going
	to error stream."

	"(CommandShellTestCase selector: #testInvalidBangExpression) debug"

	| pipelines procs openFileCount p o e |
	openFileCount := self numberOfOpenFiles.
	self should: [shell outputStream contents isEmpty].
	self should: shell outputStream isEmpty.
	pipelines := shell evaluateOrMakePipelinesFrom: 'foobar !!'.
	self assert: pipelines size = 1.
	procs := pipelines last.
	p := procs last.
	self should: [p class == ExpressionEvaluator].
	o := procs output.
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	procs value.
	o := procs output.
	self should: [o isEmpty].
	e := procs errorUpToEnd.
	self should: ['Compiler: invalid Smalltalk expression [foobar ]*' match: e].
	self shouldnt: [e isEmpty].
	self should: shell outputStream isEmpty.
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-expression evaluator' stamp: 'dtl 6/16/2019 10:39'!
testSimpleExpression
	"Simple expression is directly evaluated by the shell and does not produce
	a pipeline collection."

	"(CommandShellTestCase selector: #testSimpleExpression) debug"

	| procs openFileCount |
	openFileCount := self numberOfOpenFiles.
	self assert: shell outputStream contents isEmpty.
	procs := shell evaluateOrMakePipelinesFrom: 'Object new printString'.
	self assert: #() equals: procs.
	self deny: shell outputStream contents isEmpty.
	self assert: (self isNumberOfOpenFiles: openFileCount)
! !

!CommandShellTestCase methodsFor: 'testing-expression evaluator' stamp: 'dtl 12/21/2007 08:57'!
testStdinPseudoVariable

	"(CommandShellTestCase selector: #testStdinPseudoVariable) debug"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'help help | stdin upToEnd !!'.
	p := procs last.
	self should: [p class == ExpressionEvaluator].
	o := procs output.
	self should: [o isKindOf: String].
	self should: [o isEmpty not].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-expression evaluator' stamp: 'dtl 12/21/2007 13:00'!
testStdinPseudoVariableFromExternalProcess

	"(CommandShellTestCase selector: #testStdinPseudoVariableFromExternalProcess) debug"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'who | stdin upToEndOfFile !!'.
	p := procs last.
	self should: [p class == ExpressionEvaluator].
	o := procs output.
	self should: [o isKindOf: String].
	self should: [o isEmpty not].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-expression evaluator' stamp: 'dtl 12/21/2007 12:54'!
testStdinPseudoVariableUpToEndOfFile

	"(CommandShellTestCase selector: #testStdinPseudoVariableUpToEndOfFile) debug"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'help help | stdin upToEndOfFile !!'.
	p := procs last.
	self should: [p class == ExpressionEvaluator].
	o := procs output.
	self should: [o isKindOf: String].
	self should: [o isEmpty not].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-scripts' stamp: 'dtl 12/15/2002 20:48'!
testCommandOnFailure01

	"(CommandShellTestCase selector: #testCommandOnFailure01) run"

	| openFileCount result |
	openFileCount := self numberOfOpenFiles.
	result := shell command: 'ls NO/SUCH/FILE' onFailureDo: ['the command failed'].
	self should: [result = 'the command failed'].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-scripts' stamp: 'dtl 12/15/2002 20:49'!
testCommandOnFailure02

	"(CommandShellTestCase selector: #testCommandOnFailure02) run"

	| openFileCount result |
	openFileCount := self numberOfOpenFiles.
	result := shell command: 'ls' onFailureDo: ['the command failed'].
	self should: [result isKindOf: OrderedCollection].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-scripts' stamp: 'dtl 12/15/2002 20:55'!
testCommandOnFailure03

	"(CommandShellTestCase selector: #testCommandOnFailure03) run"

	| openFileCount result |
	openFileCount := self numberOfOpenFiles.
	result := shell command: 'ls NO/SUCH/FILE'
				onFailureDo: [:p | 'the command failed ', p printString].
	self should: ['the command failed*' match: result].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-scripts' stamp: 'dtl 12/15/2002 20:59'!
testIfThenElse01

	"(CommandShellTestCase selector: #testIfThenElse01) run"

	| openFileCount result |
	openFileCount := self numberOfOpenFiles.
	result := shell
		if: 'who'
		then: ['the command succeeded']
		else: ['the command failed'].
	self should: ['the command succeeded' = result].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-scripts' stamp: 'dtl 12/15/2002 20:59'!
testIfThenElse02

	"(CommandShellTestCase selector: #testIfThenElse02) run"

	| openFileCount result |
	openFileCount := self numberOfOpenFiles.
	result := shell
		if: 'ls NO/SUCH/FILE'
		then: ['the command succeeded']
		else: ['the command failed'].
	self should: ['the command failed' = result].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-scripts' stamp: 'dtl 12/15/2002 21:05'!
testIfThenElse03

	"(CommandShellTestCase selector: #testIfThenElse03) run"

	| openFileCount result |
	openFileCount := self numberOfOpenFiles.
	result := shell
		if: 'who
			ls NO/SUCH/FILE
			who'
		then: [:p |
			self should: [p isKindOf: OrderedCollection].
			self should: [p first succeeded].
			self shouldnt: [p second succeeded].
			self should: [p third succeeded].
			'the command succeeded', p printString]
		else: [:p |
			self should: [p isKindOf: OrderedCollection].
			'the command failed ', p printString].
	self should: ['the command failed*' match: result].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-scripts' stamp: 'dtl 12/15/2002 21:03'!
testIfThenElse04

	"(CommandShellTestCase selector: #testIfThenElse04) run"

	| openFileCount result |
	openFileCount := self numberOfOpenFiles.
	result := shell
		if: 'who'
		then: [:p |
			self should: [p isKindOf: OrderedCollection].
			'the command succeeded', p printString]
		else: [:p |
			self should: [p isKindOf: OrderedCollection].
			'the command failed ', p printString].
	self should: ['the command succeeded*' match: result].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-scripts' stamp: 'dtl 6/10/2006 17:53'!
testScriptOnFailure01

	"(CommandShellTestCase selector: #testScriptOnFailure01) run"

	| openFileCount result |
	openFileCount := self numberOfOpenFiles.
	result := shell
		script: 'who
				help
				ls -l NOSUCHFILE
				help'
		onFailureDo: [:p | 'the pipeline collection that failed was ', p printString].
	self should: ['the pipeline collection *' match: result].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-scripts' stamp: 'dtl 6/10/2006 17:53'!
testScriptOnFailure02

	"(CommandShellTestCase selector: #testScriptOnFailure02) run"

	| openFileCount result |
	openFileCount := self numberOfOpenFiles.
	result := shell
		script: 'who
				help
				ls
				help'
		onFailureDo: [:p | 'the pipeline collection that failed was ', p printString].
	self should: [result isKindOf: OrderedCollection].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-scripts' stamp: 'dtl 6/10/2006 17:52'!
testScriptOnFailure03

	"(CommandShellTestCase selector: #testScriptOnFailure03) run"

	| openFileCount result |
	openFileCount := self numberOfOpenFiles.
	result := shell
		script: 'who
				help
				ls -l NOSUCHFILE
				help'
		onFailureDo: ['the pipeline collection failed'].
	self should: ['the pipeline collection failed' = result].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 4/22/2012 13:10'!
testDoCommandsInString1

	"(CommandShellTestCase selector: #testDoCommandsInString1) debug"

	| command procs expectedResult savedResult |

	command := 'help help | CommandShellTestCase tempResult: stdin upToEndOfFile !!'.
	procs := shell pipeline: 'help help'.
	expectedResult := procs last output.
	self should: [expectedResult size > 10].
	self class tempResult: nil.
	shell command: command.
	(Delay forSeconds: 1) wait.	"Allow the command to run"
	savedResult := self class tempResult.
	self assert: expectedResult size > 10. "not empty"
	self assert: expectedResult = savedResult
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 4/22/2012 13:12'!
testDoCommandsInString2
	"Note, use #upToEndOfFile to allow external process to run to completion"

	"(CommandShellTestCase selector: #testDoCommandsInString2) debug"

	| command procs expectedResult savedResult |

	command := 'who | CommandShellTestCase tempResult: stdin upToEndOfFile !!'.
	procs := shell pipeline: 'who'.
	expectedResult := procs last output.
	self should: [expectedResult size > 10].
	self class tempResult: nil.
	shell command: command.
	(Delay forSeconds: 1) wait.	"Allow the command to run"
	savedResult := self class tempResult.
	self assert: expectedResult size > 10. "not empty"
	self assert: expectedResult = savedResult
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 10:16'!
testPipeline01

	"(CommandShellTestCase selector: #testPipeline01) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'ps'.
	p := procs last.
	self should: [p class == PipeableOSProcess].
	o := procs output.
	self should: [o isKindOf: String].
	self shouldnt: [o isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 1/29/2013 20:26'!
testPipeline02

	"(CommandShellTestCase selector: #testPipeline02) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'echo hello world'.
	p := procs last.
	self should: [p class == PipeableOSProcess].
	o := procs output.
	self should: [o isKindOf: String].
	self shouldnt: [o isEmpty].
	self should: ['hello world*' match: o].
	self should: [(CommandShell withBlanksTrimmed: o) = 'hello world'].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 10:19'!
testPipeline03

	"(CommandShellTestCase selector: #testPipeline03) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'ps | cat'.
	p := procs last.
	self should: [p class == PipeableOSProcess].
	o := procs output.
	self should: [o isKindOf: String].
	self shouldnt: [o isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 10:19'!
testPipeline04

	"(CommandShellTestCase selector: #testPipeline04) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'ps | copyToOutput'.
	p := procs last.
	self should: [p class == ShellBuiltinEvaluator].
	o := procs output.
	self should: [o isKindOf: String].
	self shouldnt: [o isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 10:19'!
testPipeline05

	"(CommandShellTestCase selector: #testPipeline05) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'ps | cat | od | cat'.
	p := procs last.
	o := procs output.
	self should: [o isKindOf: String].
	self shouldnt: [o isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 10:20'!
testPipeline06

	"(CommandShellTestCase selector: #testPipeline06) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'ps > /tmp/delete.me | cat'.
	p := procs last.
	o := procs output.
	self should: [p class == PipeableOSProcess].
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 10:21'!
testPipeline07

	"(CommandShellTestCase selector: #testPipeline07) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'ps > /dev/null | cat'.
	p := procs last.
	o := procs output.
	self should: [p class == PipeableOSProcess].
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 10:51'!
testPipeline08

	"(CommandShellTestCase selector: #testPipeline08) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'cat < /etc/passwd | cat'.
	p := procs last.
	o := procs output.
	self should: [p class == PipeableOSProcess].
	self should: [o isKindOf: String].
	self shouldnt: [o isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 10:52'!
testPipeline09

	"(CommandShellTestCase selector: #testPipeline09) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'ls /etc/hosts /etc/NOSUCHFILE 2> /tmp/delete.me | cat'.
	p := procs last.
	o := procs output.
	self should: [p class == PipeableOSProcess].
	self should: [o isKindOf: String].
	self shouldnt: [o isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 10:52'!
testPipeline10

	"(CommandShellTestCase selector: #testPipeline10) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'ps | cat > /tmp/delete.me | cat'.
	p := procs last.
	o := procs output.
	self should: [p class == PipeableOSProcess].
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:10'!
testPipeline11

	"(CommandShellTestCase selector: #testPipeline11) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'ps | cat > /dev/null | cat'.
	p := procs last.
	o := procs output.
	self should: [p class == PipeableOSProcess].
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:10'!
testPipeline12

	"(CommandShellTestCase selector: #testPipeline12) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'ps | cat < /etc/passwd | cat'.
	p := procs last.
	o := procs output.
	self should: [p class == PipeableOSProcess].
	self should: [o isKindOf: String].
	self shouldnt: [o isEmpty].
	(self numberOfOpenFiles == openFileCount) ifFalse: [Smalltalk garbageCollect].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:10'!
testPipeline13

	"(CommandShellTestCase selector: #testPipeline13) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'who | ls /etc/hosts /etc/NOSUCHFILE 2> /tmp/delete.me | cat'.
	p := procs last.
	o := procs output.
	self should: [p class == PipeableOSProcess].
	self should: [o isKindOf: String].
	self shouldnt: [o isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:11'!
testPipeline14

	"(CommandShellTestCase selector: #testPipeline14) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'help | cat < /etc/passwd | cat'.
	p := procs last.
	o := procs output.
	self should: [p class == PipeableOSProcess].
	self should: [o isKindOf: String].
	self shouldnt: [o isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:11'!
testPipeline20

	"(CommandShellTestCase selector: #testPipeline20) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'help | copyToOutput | copyToOutput'.
	p := procs last.
	self should: [p class == ShellBuiltinEvaluator].
	o := procs output.
	self should: [o isKindOf: String].
	self shouldnt: [o isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:11'!
testPipeline21

	"(CommandShellTestCase selector: #testPipeline21) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'help | copyToOutput > /tmp/delete.me | copyToOutput'.
	p := procs last.
	self should: [p class == ShellBuiltinEvaluator].
	o := procs output.
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:12'!
testPipeline22

	"(CommandShellTestCase selector: #testPipeline22) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'help | copyToOutput 2> /tmp/delete.me | copyToOutput'.
	p := procs last.
	self should: [p class == ShellBuiltinEvaluator].
	o := procs output.
	self should: [o isKindOf: String].
	self should: [o isEmpty not].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:12'!
testPipeline23

	"(CommandShellTestCase selector: #testPipeline23) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'help | copyToOutput 2 > /dev/null | copyToOutput'.
	p := procs last.
	self should: [p class == ShellBuiltinEvaluator].
	o := procs output.
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:12'!
testPipeline24

	"(CommandShellTestCase selector: #testPipeline24) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'help | copyToOutput>/tmp/delete.me | copyToOutput'.
	p := procs last.
	self should: [p class == ShellBuiltinEvaluator].
	o := procs output.
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:13'!
testPipeline25

	"(CommandShellTestCase selector: #testPipeline25) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'help | copyToOutput2>/tmp/delete.me | copyToOutput'.
	p := procs last.
	self should: [p class == ShellBuiltinEvaluator].
	o := procs output.
	self should: [o isKindOf: String].
	self should: [o isEmpty not].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:13'!
testPipeline26

	"(CommandShellTestCase selector: #testPipeline26) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'help | copyToOutput < /etc/hosts | copyToOutput'.
	p := procs last.
	self should: [p class == ShellBuiltinEvaluator].
	o := procs output.
	self should: [o isKindOf: String].
	self should: [o isEmpty not].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:13'!
testPipeline27

	"(CommandShellTestCase selector: #testPipeline27) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'help | copyToOutput < /etc/hosts | copyToError'.
	p := procs last.
	self should: [p class == ShellBuiltinEvaluator].
	o := procs output.
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:13'!
testPipeline28

	"(CommandShellTestCase selector: #testPipeline28) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'ls -l | copyToOutput < /etc/hosts | copyToOutput'.
	p := procs last.
	self should: [p class == ShellBuiltinEvaluator].
	o := procs output.
	self should: [o isKindOf: String].
	self should: [o isEmpty not].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:13'!
testPipeline30

	"(CommandShellTestCase selector: #testPipeline30) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'help | copyToOutput | cat'.
	p := procs last.
	self should: [p class == PipeableOSProcess].
	o := procs output.
	self should: [o isKindOf: String].
	self shouldnt: [o isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:13'!
testPipeline31

	"(CommandShellTestCase selector: #testPipeline31) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'help | copyToOutput > /tmp/delete.me | cat'.
	p := procs last.
	self should: [p class == PipeableOSProcess].
	o := procs output.
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:13'!
testPipeline32

	"(CommandShellTestCase selector: #testPipeline32) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'help | copyToOutput 2> /tmp/delete.me | cat'.
	p := procs last.
	self should: [p class == PipeableOSProcess].
	o := procs output.
	self should: [o isKindOf: String].
	self should: [o isEmpty not].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:14'!
testPipeline33

	"(CommandShellTestCase selector: #testPipeline33) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'help | copyToOutput 2> /dev/null | cat'.
	p := procs last.
	self should: [p class == PipeableOSProcess].
	o := procs output.
	self should: [o isKindOf: String].
	self shouldnt: [o isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:14'!
testPipeline34

	"(CommandShellTestCase selector: #testPipeline34) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'help | copyToOutput>/tmp/delete.me | cat'.
	p := procs last.
	self should: [p class == PipeableOSProcess].
	o := procs output.
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:15'!
testPipeline35

	"(CommandShellTestCase selector: #testPipeline35) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'help | copyToOutput2>/tmp/delete.me | cat'.
	p := procs last.
	self should: [p class == PipeableOSProcess].
	o := procs output.
	self should: [o isKindOf: String].
	self should: [o isEmpty not].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:15'!
testPipeline36

	"(CommandShellTestCase selector: #testPipeline36) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'help | copyToOutput < /etc/hosts | cat'.
	p := procs last.
	self should: [p class == PipeableOSProcess].
	o := procs output.
	self should: [o isKindOf: String].
	self should: [o isEmpty not].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:15'!
testPipeline37

	"(CommandShellTestCase selector: #testPipeline37) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'ls -l | copyToOutput < /etc/hosts | cat'.
	p := procs last.
	self should: [p class == PipeableOSProcess].
	o := procs output.
	self should: [o isKindOf: String].
	self should: [o isEmpty not].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:15'!
testPipeline38

	"(CommandShellTestCase selector: #testPipeline38) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'help | cat'.
	p := procs last.
	self should: [p class == PipeableOSProcess].
	o := procs output.
	self should: [o isKindOf: String].
	self shouldnt: [o isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:15'!
testPipeline39

	"(CommandShellTestCase selector: #testPipeline39) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'help > /tmp/delete.me | cat'.
	p := procs last.
	self should: [p class == PipeableOSProcess].
	o := procs output.
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 5/2/2020 16:24'!
testPipeline40

	"(CommandShellTestCase selector: #testPipeline40) run"

	| procs p o openFileCount fs |
	openFileCount := self numberOfOpenFiles.
	CommandShell deleteFileNamed: '/tmp/delete.me'.	
	procs := shell pipeline: 'ps > /tmp/delete.me'.
	p := procs last.
	self should: [p class == PipeableOSProcess].
	o := procs output.
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	fs := CommandShell fileNamed: '/tmp/delete.me'.
	self should: [fs upToEnd isEmpty not].
	fs close.
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 5/2/2020 16:24'!
testPipeline41

	"(CommandShellTestCase selector: #testPipeline41) run"

	| procs p o openFileCount fs |
	openFileCount := self numberOfOpenFiles.
	CommandShell deleteFileNamed: '/tmp/delete.me'.	
	procs := shell pipeline: 'ls /etc/hosts /NO/SUCH/FILE 2> /tmp/delete.me'.
	p := procs last.
	self should: [p class == PipeableOSProcess].
	o := procs output.
	self should: [o isKindOf: String].
	self shouldnt: [o isEmpty].
	fs := CommandShell fileNamed: '/tmp/delete.me'.
	self should: [fs upToEnd isEmpty not].
	fs close.
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:21'!
testPipeline42

	"(CommandShellTestCase selector: #testPipeline42) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'cat < /etc/hosts'.
	p := procs last.
	self should: [p class == PipeableOSProcess].
	o := procs output.
	self should: [o isKindOf: String].
	self shouldnt: [o isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 10/13/2008 21:32'!
testPipeline43

	"(CommandShellTestCase selector: #testPipeline43) run"

	| procs p o e openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'help | copyToOutput 2> /tmp/delete.me | noSuchCommand'.
	p := procs last.
	self should: [p class == ExpressionEvaluator].

	self shouldnt: [p succeeded].

	o := procs upToEnd.
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	e := p errorUpToEnd.
	self should: [e isKindOf: String].
	self shouldnt: [e isEmpty].
	self should: [procs output isEmpty]. "Force read to EOF, closes output pipe"
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 10/13/2008 21:25'!
testPipeline44

	"(CommandShellTestCase selector: #testPipeline44) run"

	| procs p o e openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'copyToOutput | noSuchCommand'.
	p := procs last.
	self should: [p class == ExpressionEvaluator].
	self shouldnt: [p succeeded].
	o := procs upToEnd.
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	e := p errorUpToEnd.
	self should: [e isKindOf: String].
	self shouldnt: [e isEmpty].
	self should: [procs output isEmpty]. "Force read to EOF, closes output pipe"
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 10/13/2008 21:32'!
testPipeline45

	"(CommandShellTestCase selector: #testPipeline45) run"

	| procs p o e openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'help | noSuchCommand'.
	p := procs last.
	self should: [p class == ExpressionEvaluator].

	self shouldnt: [p succeeded].

	o := procs upToEnd.
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	e := p errorUpToEnd.
	self should: [e isKindOf: String].
	self shouldnt: [e isEmpty].
	self should: [procs output isEmpty]. "Force read to EOF, closes output pipe"
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 11/25/2006 13:56'!
testPipeline46

	"(CommandShellTestCase selector: #testPipeline46) run"

	| procs p o e openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'help | who'.
	p := procs last.
	self should: [p class == PipeableOSProcess].
	o := procs upToEndOfFile. "wait for output, otherwise may be lost when in polling mode"
	self should: [o isKindOf: String].
	self shouldnt: [o isEmpty].
	e := p errorUpToEnd.
	self should: [e isKindOf: String].
	self should: [e isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 11/21/2006 15:26'!
testPipeline47

	"(CommandShellTestCase selector: #testPipeline47) run"

	| procs p o e openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'help | sleep 1'.
	p := procs last.
	self should: [p class == PipeableOSProcess].
	o := procs upToEnd.
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	e := p errorUpToEnd.
	self should: [e isKindOf: String].
	self should: [e isEmpty].
	self should: [procs output isEmpty]. "Force read to EOF, closes output pipe"
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 10/13/2008 21:32'!
testPipeline48

	"(CommandShellTestCase selector: #testPipeline48) run"

	| procs p o e openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'who | noSuchCommand'.
	p := procs last.
	self should: [p class == ExpressionEvaluator].

	self shouldnt: [p succeeded].

	o := procs upToEnd.
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	e := p errorUpToEnd.
	self should: [e isKindOf: String].
	self shouldnt: [e isEmpty].
	self should: [procs output isEmpty]. "Force read to EOF, closes output pipe"
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 10/14/2008 06:29'!
testPipeline49

	"(CommandShellTestCase selector: #testPipeline49) run"

	| procs p o e openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'help | copyToOutput 2> /tmp/delete.me | copyToOutput'.
	p := procs last.
	self should: [p class == ShellBuiltinEvaluator].

	self should: [p succeeded].

	o := procs upToEnd.
	self should: [o isKindOf: String].
	self shouldnt: [o isEmpty].
	e := p errorUpToEnd.
	self should: [e isKindOf: String].
	self should: [e isEmpty].
	self should: [procs output isEmpty]. "Force read to EOF, closes output pipe"
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 5/2/2020 16:24'!
testPipeline50

	"(CommandShellTestCase selector: #testPipeline50) run"

	| procs p o openFileCount fs |
	openFileCount := self numberOfOpenFiles.
	CommandShell deleteFileNamed: '/tmp/delete.me'.	
	procs := shell pipeline: 'help > /tmp/delete.me'.
	p := procs last.
	self should: [p class == ShellBuiltinEvaluator].
	o := procs output.
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	procs finalize.
	procs := CommandShell new pipeline: 'cat /tmp/delete.me'.
	self shouldnt: [procs last output isEmpty].
	fs := CommandShell fileNamed: '/tmp/delete.me'.
	self should: [fs upToEnd isEmpty not].
	fs close.
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 5/2/2020 16:25'!
testPipeline51

	"(CommandShellTestCase selector: #testPipeline51) run"

	| openFileCount procs p o fs |
	openFileCount := self numberOfOpenFiles.
	CommandShell deleteFileNamed: '/tmp/delete.me'.	
	procs := shell pipeline: 'copyToError /etc/hosts 2> /tmp/delete.me'.
	p := procs last.
	self should: [p class == ShellBuiltinEvaluator].
	o := procs output.
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	fs := CommandShell fileNamed: '/tmp/delete.me'.
	self should: [fs upToEnd isEmpty not].
	fs close.
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 5/2/2020 16:25'!
testPipeline52

	"(CommandShellTestCase selector: #testPipeline52) run"

	| procs p o openFileCount fs |
	openFileCount := self numberOfOpenFiles.
	CommandShell deleteFileNamed: '/tmp/delete.me'.	
	procs := shell pipeline: 'copyToError < /etc/hosts 2> /tmp/delete.me'.
	p := procs last.
	self should: [p class == ShellBuiltinEvaluator].
	o := procs output.
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	fs := CommandShell fileNamed: '/tmp/delete.me'.
	self should: [fs upToEnd isEmpty not].
	fs close.
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:22'!
testPipeline53

	"(CommandShellTestCase selector: #testPipeline53) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'copyToOutput < /etc/hosts'.
	p := procs last.
	self should: [p class == ShellBuiltinEvaluator].
	o := procs output.
	self should: [o isKindOf: String].
	self shouldnt: [o isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 1/25/2013 20:02'!
testPipeline60

	"(CommandShellTestCase selector: #testPipeline60) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	CommandShell deleteFileNamed: '/tmp/delete.me'.	
	procs := shell pipeline: 'Smalltalk!! > /tmp/delete.me'.
	p := procs last.
	self should: [p class == ExpressionEvaluator].
	o := procs output.
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	procs finalize.
	procs := CommandShell new pipeline: 'cat /tmp/delete.me'.
	self shouldnt: [procs last output isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 5/2/2020 16:25'!
testPipeline61

	"(CommandShellTestCase selector: #testPipeline61) run"

	| procs p o openFileCount fs |
	openFileCount := self numberOfOpenFiles.
	CommandShell deleteFileNamed: '/tmp/delete.me'.	
	procs := shell pipeline: 'stdout nextPutAll: ''Hello world!!'' !! > /tmp/delete.me'.
	p := procs last.
	self should: [p class == ExpressionEvaluator].
	o := procs output.
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	fs := CommandShell fileNamed: '/tmp/delete.me'.
	self should: [fs upToEnd isEmpty not].
	fs close.
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 5/2/2020 16:25'!
testPipeline62

	"(CommandShellTestCase selector: #testPipeline62) run"

	| procs p o openFileCount fs |
	openFileCount := self numberOfOpenFiles.
	CommandShell deleteFileNamed: '/tmp/delete.me'.	
	procs := shell pipeline: 'stderr nextPutAll: ''Hello stderr'' !! 2> /tmp/delete.me'.
	p := procs last.
	self should: [p class == ExpressionEvaluator].
	o := procs output.
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	fs := CommandShell fileNamed: '/tmp/delete.me'.
	self should: [fs upToEnd isEmpty not].
	fs close.
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:23'!
testPipeline63

	"(CommandShellTestCase selector: #testPipeline63) run"

	| procs p o openFileCount |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'stdin upToEnd !! < /etc/hosts'.
	p := procs last.
	self should: [p class == ExpressionEvaluator].
	o := procs output.
	self should: [o isKindOf: String].
	self shouldnt: [o isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 5/2/2020 16:25'!
testPipeline64

	"(CommandShellTestCase selector: #testPipeline64) run"

	| procs p o openFileCount fs |
	openFileCount := self numberOfOpenFiles.
	CommandShell deleteFileNamed: '/tmp/delete.me'.	
	procs := shell pipeline: 'stdout nextPutAll: stdin upToEnd !! < /etc/hosts > /tmp/delete.me'.
	p := procs last.
	self should: [p class == ExpressionEvaluator].
	o := procs output.
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	fs := CommandShell fileNamed: '/tmp/delete.me'.
	self should: [fs upToEnd isEmpty not].
	fs close.
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 1/25/2013 20:18'!
testPipeline65
	"Run a fairly long Smalltalk expression and make sure the complete output
	gets picked up by the next internal process in the pipeline."

	"(CommandShellTestCase selector: #testPipeline65) run"

	| procs p o last |
	(Smalltalk respondsTo: #asArray)
		ifTrue: ["traditional system dictionary"
			last := (Smalltalk asArray first: 300) printString last: 20.
			procs := shell pipeline: 'Smalltalk asArray first: 300!! | copyToOutput']
		ifFalse: ["newer image with refactored system dictionary"
			(Smalltalk respondsTo: #globals)
				ifFalse: [self error: 'unknown system dictionary organization'].
			last := (Smalltalk globals keys first: 300) printString last: 20.
			procs := shell pipeline: 'Smalltalk globals keys first: 300!! | copyToOutput'].
	p := procs last.
	self should: [p class == ShellBuiltinEvaluator].
	o := procs output.
	self should: [o isKindOf: String].
	self shouldnt: [o isEmpty].
	"n.b. remove trailing line terminator from command output"
	self should: (o last: 21) allButLast = last
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 1/25/2013 20:19'!
testPipeline66
	"Run a fairly long Smalltalk expression and make sure the complete output
	gets picked up by the next internal process in the pipeline."

	"Warning: This test will produce a deadlock condition if the Smalltalk
	expression runs too long."

	"(CommandShellTestCase selector: #testPipeline66) run"

	| procs p o last count |
	count := 150. "<== Make this smaller if you get a deadlock"
	(Smalltalk respondsTo: #asArray)
		ifTrue: ["traditional system dictionary"
			last := (Smalltalk asArray first: count) last printString.
			procs := shell pipeline: 'Smalltalk asArray first: ', count printString, '!! | cat']
		ifFalse: ["newer image with refactored system dictionary"
			(Smalltalk respondsTo: #globals)
				ifFalse: [self error: 'unknown system dictionary organization'].
			last := (Smalltalk globals keys first: count) last printString.
			procs := shell pipeline: 'Smalltalk globals keys first: ', count printString, '!! | cat'].
	p := procs last.
	self should: [p class == PipeableOSProcess].
	o := procs output.
	self should: [o isKindOf: String].
	self shouldnt: [o isEmpty].
	self should: [((o copyFrom: (o size - (last size + 1)) to: o size) allButLast allButLast) = last]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 12/15/2007 17:15'!
testPipeline67

	"(CommandShellTestCase selector: #testPipeline67) run"

	| procs p o openFileCount e |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'bogusExpression !!'.
	p := procs last.
	self should: [p class == ExpressionEvaluator].
	o := procs output.
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	e := procs errorUpToEnd.
	self assert: (('Compiler: invalid Smalltalk expression [bogusExpression ]', String lf) = e).
	procs finalize.
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:24'!
testPipeline70

	"(CommandShellTestCase selector: #testPipeline70) run"

	| procs p o openFileCount e |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'ls /no/such/file'.
	p := procs last.
	self should: [p class == PipeableOSProcess].
	o := procs output.
	e := procs errorUpToEnd.
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	self should: [e isKindOf: String].
	self shouldnt: [e isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:25'!
testPipeline71

	"(CommandShellTestCase selector: #testPipeline71) run"

	| procs p o openFileCount e |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'ls /no/such/file | cat'.
	p := procs last.
	self should: [p class == PipeableOSProcess].
	o := procs output.
	e := p errorPipelineStream contents.
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	self should: [e isKindOf: String].
	self shouldnt: [e isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:27'!
testPipeline72

	"(CommandShellTestCase selector: #testPipeline72) run"

	| procs p o openFileCount e |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'ls /no/such/file | copyToOutput'.
	p := procs last.
	self should: [p class == ShellBuiltinEvaluator].
	o := procs output.
	e := p errorPipelineStream contents.
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	self should: [e isKindOf: String].
	self shouldnt: [e isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 4/11/2006 06:21'!
testPipeline73

	"(CommandShellTestCase selector: #testPipeline73) run"

	| procs p o openFileCount e |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'ls /no/such/file | stdout nextPutAll: stdin upToEnd !!'.
	p := procs last.
	self should: [p class == ExpressionEvaluator].
	o := procs upToEnd.
	e := p errorPipelineStream contents.
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	self should: [e isKindOf: String].
	self shouldnt: [e isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:28'!
testPipeline74

	"(CommandShellTestCase selector: #testPipeline74) run"

	| procs p o openFileCount e |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'ls /no/such/file | stdout nextPutAll: stdin upToEnd !! | cat | copyToOutput | cat | cat | copyToOutput | copyToOutput'.
	p := procs last.
	self should: [p class == ShellBuiltinEvaluator].
	o := procs output.
	e := p errorPipelineStream contents.
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	self should: [e isKindOf: String].
	self shouldnt: [e isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:28'!
testPipeline75

	"(CommandShellTestCase selector: #testPipeline75) run"

	| procs p o openFileCount e |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'ls /no/such/file | stdout nextPutAll: stdin upToEnd !! | cat | copyToOutput | cat | cat | copyToOutput | copyToOutput'.
	p := procs last.
	self should: [p class == ShellBuiltinEvaluator].
	o := procs output.
	e := procs errorUpToEnd.
	self should: [o isKindOf: String].
	self should: [o isEmpty].
	self should: [e isKindOf: String].
	self shouldnt: [e isEmpty].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 11/25/2006 13:57'!
testPipeline80
	"Test error streaming for a PipeableOSProcess"

	"(CommandShellTestCase selector: #testPipeline80) run"

	| procs p o openFileCount errorLength e1 e2 |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'ls /etc/hosts /NO/SUCH/FILE'.
	p := procs last.
	self should: [p class == PipeableOSProcess].
	o := procs upToEndOfFile. "wait for output, otherwise may be lost when in polling mode"
	self should: [o isKindOf: String].
	self shouldnt: [o isEmpty].
	errorLength := p errorPipelineStream size.
	e1 := procs nextFromError: 15.
	e2 := procs errorUpToEnd.
	self should: [errorLength == (e1 size + (e2 size))].
	self should: [procs errorUpToEnd isEmpty].
	self should: [p errorPipelineStream upToEnd size = 0].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 3/23/2003 11:33'!
testPipeline81
	"Test error streaming for a ShellBuiltinEvaluator"

	"(CommandShellTestCase selector: #testPipeline81) run"

	| procs p o openFileCount errorLength e1 e2 |
	openFileCount := self numberOfOpenFiles.
	procs := shell pipeline: 'ls /etc/hosts /NO/SUCH/FILE | copyToOutput'.
	p := procs last.
	self should: [p class == ShellBuiltinEvaluator].
	o := procs upToEnd.
	self should: [o isKindOf: String].
	self shouldnt: [o isEmpty].
	errorLength := p errorPipelineStream size.
	e1 := procs nextFromError: 15.
	e2 := procs errorUpToEnd.
	self should: [errorLength == (e1 size + (e2 size))].
	self should: [procs errorUpToEnd isEmpty].
	self should: [p errorPipelineStream size == 0].
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 1/21/2007 22:06'!
testPipeline90
	"Test Smalltalk expression as the complete command. Do not worry about the
	actual output, as it gets clobbered by the prompt."

	"(CommandShellTestCase selector: #testPipeline90) run"

	| o |
	shell command: 'Smalltalk classNames size'.
	o := shell outputStream contents.
	self should: [o isKindOf: String].
	self shouldnt: [o isEmpty].
	self should: [o size > 3]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 2/1/2003 18:06'!
testPipeline91
	"Test Smalltalk expression as the complete command"

	"(CommandShellTestCase selector: #testPipeline91) run"

	| numberOfClasses p o numberCounted |
	numberOfClasses := Smalltalk classNames size.
	p := shell tryEvaluatingAsSmalltalk: 'Smalltalk classNames size'.
	self should: [p class == ExpressionEvaluator].
	self should: [p isComplete].
	o := p upToEnd.
	self should: [o isKindOf: String].
	self shouldnt: [o isEmpty].
	numberCounted := o asInteger.
	self should: [numberCounted == numberOfClasses]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 2/1/2003 18:06'!
testPipeline92
	"Test Smalltalk expression as the complete command"

	"(CommandShellTestCase selector: #testPipeline92) run"

	| p o |
	p := shell tryEvaluatingAsSmalltalk: '#Smalltalk classNames size'.
	self should: [p class == ExpressionEvaluator].
	self should: [p isComplete].
	self should: [p exitStatus == #fail].
	o := p upToEnd.
	self should: [o isKindOf: String].
	self should: [o isEmpty]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 2/1/2003 18:06'!
testPipeline93
	"Test Smalltalk expression as the complete command. Should fail in compiler."

	"(CommandShellTestCase selector: #testPipeline93) run"

	| p o |
	p := shell tryEvaluatingAsSmalltalk: 'Smalltalk classNames size!!'.
	self should: [p class == ExpressionEvaluator].
	self should: [p isComplete].
	self should: [p exitStatus == #fail].
	o := p upToEnd.
	self should: [o isKindOf: String].
	self should: [o isEmpty]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 2/1/2003 18:07'!
testPipeline94
	"Test Smalltalk expression as the complete command. Should fail in evaluation."

	"(CommandShellTestCase selector: #testPipeline94) run"

	| p o |
	p := shell tryEvaluatingAsSmalltalk: 'Smalltalk noSuchSelector'.
	self should: [p class == ExpressionEvaluator].
	self should: [p isComplete].
	self should: [p exitStatus == #fail].
	o := p upToEnd.
	self should: [o isKindOf: String].
	self should: [o isEmpty]
! !

!CommandShellTestCase methodsFor: 'testing-pipelines' stamp: 'dtl 2/1/2003 18:07'!
testPipeline95
	"Test Smalltalk expression as the complete command. Should fail in compiler."

	"(CommandShellTestCase selector: #testPipeline95) run"

	| p o |
	p := shell tryEvaluatingAsSmalltalk: '(Smalltalk classNames size'.
	self should: [p class == ExpressionEvaluator].
	self should: [p isComplete].
	self should: [p exitStatus == #fail].
	o := p upToEnd.
	self should: [o isKindOf: String].
	self should: [o isEmpty]
! !

!CommandShellTestCase class methodsFor: 'class initialization' stamp: 'dtl 9/2/2006 10:02'!
initialize
	"CommandShellTestCase initialize"
	"CheckFileHandleCount := true"
	"CheckFileHandleCount := false"

	CheckFileHandleCount := true! !

!CommandShellTestCase class methodsFor: 'accessing' stamp: 'dtl 9/15/2001 12:49'!
tempResult
	"A global variable for holding the result of an internal process proxy evaluation.
	This is an ugly kludge."

	^ TempResult! !

!CommandShellTestCase class methodsFor: 'accessing' stamp: 'dtl 9/15/2001 12:50'!
tempResult: anObject
	"A global variable for holding the result of an internal process proxy evaluation.
	This is an ugly kludge."

	TempResult := anObject! !

!ExpressionEvaluatorTestCase methodsFor: 'Running' stamp: 'dtl 4/19/2003 16:13'!
runAll

	"self new runAll"

	| result suite |
	suite := TestSuite new.
	suite addTest: (self class selector: #testCommand01).
	suite addTest: (self class selector: #testCommand02).
	suite addTest: (self class selector: #testCommand03).
	suite addTest: (self class selector: #testCommand04).
	suite addTest: (self class selector: #testCommand05).
	suite addTest: (self class selector: #testCommand06).
	suite addTest: (self class selector: #testBlock01).
	suite addTest: (self class selector: #testBlock02).
	suite addTest: (self class selector: #testBlock03).
	result := suite run.
	self should: [result defects size == 0].
	^ result
! !

!ExpressionEvaluatorTestCase methodsFor: 'Testing' stamp: 'dtl 12/15/2007 13:47'!
testBlock01
	"Command consisting of the Compiler evaluating a String"

	"(self selector: #testBlock01) run"

	pipeJunction := ExpressionEvaluator block: ['Hello world!!'].
	self should: [pipeJunction runState == #notYetRunning].
	self shouldnt: [pipeJunction isComplete].
	self should: [pipeJunction pipeToInput isNil].
	self should: [pipeJunction pipeFromOutput isKindOf: InternalPipe].
	self should: [pipeJunction errorPipelineStream isKindOf: InternalPipe].
	self should: [pipeJunction exitStatus isNil].
	self should: [pipeJunction output isEmpty].
	self should: [pipeJunction errorUpToEnd isEmpty].
	pipeJunction value.
	self should: [pipeJunction runState == #complete].
	self should: [pipeJunction isComplete].
	self should: [pipeJunction exitStatus == #success].
	self should: [pipeJunction succeeded].
	self should: [pipeJunction upToEnd = ('Hello world!!', String lf)].
	self should: [pipeJunction errorUpToEnd isEmpty].
! !

!ExpressionEvaluatorTestCase methodsFor: 'Testing' stamp: 'dtl 12/15/2007 17:16'!
testBlock02
	"Evaluating an MNU"

	"(self selector: #testBlock02) run"

	pipeJunction := ExpressionEvaluator block: [Smalltalk noSuchMessage].
	self should: [pipeJunction runState == #notYetRunning].
	self shouldnt: [pipeJunction isComplete].
	self should: [pipeJunction pipeToInput isNil].
	self should: [pipeJunction pipeFromOutput isKindOf: InternalPipe].
	self should: [pipeJunction errorPipelineStream isKindOf: InternalPipe].
	self should: [pipeJunction exitStatus isNil].
	self should: [pipeJunction output isEmpty].
	self should: [pipeJunction errorUpToEnd isEmpty].
	pipeJunction value.
	self should: [pipeJunction runState == #complete].
	self should: [pipeJunction isComplete].
	self should: [pipeJunction exitStatus == #fail].
	self shouldnt: [pipeJunction succeeded].
	self should: [pipeJunction upToEnd isEmpty].
	self should: [('MessageNotUnderstood: *noSuchMessage', String lf)
 				match: pipeJunction errorUpToEnd]! !

!ExpressionEvaluatorTestCase methodsFor: 'Testing' stamp: 'dtl 12/15/2007 13:48'!
testBlock03
	"Command consisting of the Compiler evaluating an Array new"

	"(self selector: #testBlock03) run"

	pipeJunction := ExpressionEvaluator block: [Array with: #foo with: #bar].
	self should: [pipeJunction runState == #notYetRunning].
	self shouldnt: [pipeJunction isComplete].
	self should: [pipeJunction pipeToInput isNil].
	self should: [pipeJunction pipeFromOutput isKindOf: InternalPipe].
	self should: [pipeJunction errorPipelineStream isKindOf: InternalPipe].
	self should: [pipeJunction exitStatus isNil].
	self should: [pipeJunction output isEmpty].
	self should: [pipeJunction errorUpToEnd isEmpty].
	pipeJunction value.
	self should: [pipeJunction runState == #complete].
	self should: [pipeJunction isComplete].
	self should: [pipeJunction exitStatus == #success].
	self should: [pipeJunction succeeded].
	self should: [pipeJunction upToEnd = ('#(#foo #bar)', String lf)].
	self should: [pipeJunction errorUpToEnd isEmpty].
! !

!ExpressionEvaluatorTestCase methodsFor: 'Testing' stamp: 'dtl 12/15/2007 13:44'!
testCommand01
	"Command consisting of the Compiler evaluating a String"

	"(self selector: #testCommand01) run"

	pipeJunction := ExpressionEvaluator command: '''Hello world!!'''.
	self should: [pipeJunction runState == #notYetRunning].
	self shouldnt: [pipeJunction isComplete].
	self should: [pipeJunction pipeToInput isNil].
	self should: [pipeJunction pipeFromOutput isKindOf: InternalPipe].
	self should: [pipeJunction errorPipelineStream isKindOf: InternalPipe].
	self should: [pipeJunction exitStatus isNil].
	self should: [pipeJunction output isEmpty].
	self should: [pipeJunction errorUpToEnd isEmpty].
	pipeJunction value.
	self should: [pipeJunction runState == #complete].
	self should: [pipeJunction isComplete].
	self should: [pipeJunction exitStatus == #success].
	self should: [pipeJunction succeeded].
	self should: [pipeJunction upToEnd = ('Hello world!!', String lf)].
	self should: [pipeJunction errorUpToEnd isEmpty].
! !

!ExpressionEvaluatorTestCase methodsFor: 'Testing' stamp: 'dtl 3/26/2006 12:29'!
testCommand02
	"Evaluating an MNU"

	"(self selector: #testCommand02) run"

	pipeJunction := ExpressionEvaluator command: 'Smalltalk noSuchMessage'.
	self should: [pipeJunction runState == #notYetRunning].
	self shouldnt: [pipeJunction isComplete].
	self should: [pipeJunction pipeToInput isNil].
	self should: [pipeJunction pipeFromOutput isKindOf: InternalPipe].
	self should: [pipeJunction errorPipelineStream isKindOf: InternalPipe].
	self should: [pipeJunction exitStatus isNil].
	self should: [pipeJunction output isEmpty].
	self should: [pipeJunction errorUpToEnd isEmpty].
	pipeJunction value.
	self should: [pipeJunction runState == #complete].
	self should: [pipeJunction isComplete].
	self should: [pipeJunction exitStatus == #fail].
	self shouldnt: [pipeJunction succeeded].
	self should: [pipeJunction upToEnd isEmpty].
	self should: [('MessageNotUnderstood: *noSuchMessage', String lf)
 				match: pipeJunction errorUpToEnd]

! !

!ExpressionEvaluatorTestCase methodsFor: 'Testing' stamp: 'dtl 12/15/2007 13:45'!
testCommand03
	"Command consisting of the Compiler evaluating an Array new"

	"(self selector: #testCommand03) run"

	pipeJunction := ExpressionEvaluator command: 'Array with: #foo with: #bar'.
	self should: [pipeJunction runState == #notYetRunning].
	self shouldnt: [pipeJunction isComplete].
	self should: [pipeJunction pipeToInput isNil].
	self should: [pipeJunction pipeFromOutput isKindOf: InternalPipe].
	self should: [pipeJunction errorPipelineStream isKindOf: InternalPipe].
	self should: [pipeJunction exitStatus isNil].
	self should: [pipeJunction output isEmpty].
	self should: [pipeJunction errorUpToEnd isEmpty].
	pipeJunction value.
	self should: [pipeJunction runState == #complete].
	self should: [pipeJunction isComplete].
	self should: [pipeJunction exitStatus == #success].
	self should: [pipeJunction succeeded].
	self should: [pipeJunction upToEnd = ('#(#foo #bar)', String lf)].
	self should: [pipeJunction errorUpToEnd isEmpty].
! !

!ExpressionEvaluatorTestCase methodsFor: 'Testing' stamp: 'dtl 12/15/2007 13:46'!
testCommand04
	"Evaluating an error condition, no such class"

	"(self selector: #testCommand04) run"

	pipeJunction := ExpressionEvaluator command: 'NoSuchClass new'.
	self should: [pipeJunction runState == #notYetRunning].
	self shouldnt: [pipeJunction isComplete].
	self should: [pipeJunction pipeToInput isNil].
	self should: [pipeJunction pipeFromOutput isKindOf: InternalPipe].
	self should: [pipeJunction errorPipelineStream isKindOf: InternalPipe].
	self should: [pipeJunction exitStatus isNil].
	self should: [pipeJunction output isEmpty].
	self should: [pipeJunction errorUpToEnd isEmpty].
	pipeJunction value.
	self should: [pipeJunction runState == #complete].
	self should: [pipeJunction isComplete].
	self should: [pipeJunction exitStatus == #fail].
	self shouldnt: [pipeJunction succeeded].
	self should: [pipeJunction upToEnd isEmpty].
	self should: [pipeJunction errorUpToEnd = ('Compiler: invalid Smalltalk expression [NoSuchClass new]', String lf)].
! !

!ExpressionEvaluatorTestCase methodsFor: 'Testing' stamp: 'dtl 12/15/2007 13:47'!
testCommand05
	"Evaluating an error condition"

	"(self selector: #testCommand05) run"

	pipeJunction := ExpressionEvaluator command: 'lowerCaseClassName new'.
	self should: [pipeJunction runState == #notYetRunning].
	self shouldnt: [pipeJunction isComplete].
	self should: [pipeJunction pipeToInput isNil].
	self should: [pipeJunction pipeFromOutput isKindOf: InternalPipe].
	self should: [pipeJunction errorPipelineStream isKindOf: InternalPipe].
	self should: [pipeJunction exitStatus isNil].
	self should: [pipeJunction output isEmpty].
	self should: [pipeJunction errorUpToEnd isEmpty].
	pipeJunction value.
	self should: [pipeJunction runState == #complete].
	self should: [pipeJunction isComplete].
	self should: [pipeJunction exitStatus == #fail].
	self shouldnt: [pipeJunction succeeded].
	self should: [pipeJunction upToEnd isEmpty].
	self should: [pipeJunction errorUpToEnd = ('Compiler: invalid Smalltalk expression [lowerCaseClassName new]', String lf)].
! !

!ExpressionEvaluatorTestCase methodsFor: 'Testing' stamp: 'dtl 4/25/2020 13:32'!
testCommand06
	"Evaluating an error condition"

	"(self selector: #testCommand06) run"

	| errorString |
	pipeJunction := ExpressionEvaluator command: 'Smalltalk | | bogusSyntax'.
	self assert: pipeJunction runState == #notYetRunning.
	self deny: pipeJunction isComplete.
	self assert: pipeJunction pipeToInput isNil.
	self assert: (pipeJunction pipeFromOutput isKindOf: InternalPipe).
	self assert: (pipeJunction errorPipelineStream isKindOf: InternalPipe).
	self assert: pipeJunction exitStatus isNil.
	self assert: pipeJunction output isEmpty.
	self assert: (pipeJunction errorUpToEnd isEmpty).
	pipeJunction value.
	self assert: pipeJunction runState == #complete.
	self assert: pipeJunction isComplete.
	self assert: pipeJunction exitStatus == #fail.
	self deny: pipeJunction succeeded.
	self assert: pipeJunction upToEnd isEmpty.
	"Compiler and OpalCompiler yield similar but different error messages"
	errorString := pipeJunction errorUpToEnd.
	self assert: ( '*[Smalltalk | * expected ->*| bogusSyntax]*' match: errorString)! !

!InternalPipeTestCase methodsFor: 'private' stamp: 'dtl 11/25/2001 00:42'!
readFromAndClose: aPipe writingTo: aStream

	| s |
	[aPipe atEnd] whileFalse:
		[s := aPipe next: 10000.
		aStream nextPutAll: s asString.
		(Delay forMilliseconds: 100) wait].
	(aPipe respondsTo: #reader) ifTrue: [aPipe reader close].
	^ aStream
! !

!InternalPipeTestCase methodsFor: 'private' stamp: 'dtl 11/30/2010 07:33'!
writeStuffOnThenClose: aPipe

	^ [(1 to: 10) do:
		[:i |
		aPipe nextPutAll: 'this is line ', i printString; cr.
		(Delay forMilliseconds: 100) wait].
	(aPipe respondsTo: #writer)
		ifTrue: [aPipe writer close]
		ifFalse: [aPipe close]] forkAt: Processor userInterruptPriority! !

!InternalPipeTestCase methodsFor: 'running' stamp: 'dtl 11/25/2001 00:33'!
runAll

	"InternalPipeTestCase new runAll"

	| result suite |
	suite := TestSuite new.
	suite addTest: (InternalPipeTestCase selector: #testBlocking).
	suite addTest: (InternalPipeTestCase selector: #testNonBlocking).
	result := suite run.
	self should: [result defects size == 0].
	^ result
! !

!InternalPipeTestCase methodsFor: 'running' stamp: 'dtl 11/25/2001 00:14'!
setUp

		pipe := InternalPipe new
! !

!InternalPipeTestCase methodsFor: 'testing' stamp: 'dtl 11/25/2001 18:15'!
testBlocking

	"(InternalPipeTestCase selector: #testBlocking) run"

	| resultString |
	pipe setBlocking.
	self writeStuffOnThenClose: pipe.
	Processor yield.
	resultString := pipe upToEnd last: 16.
	self should: [resultString notNil].
	self should: ['this is line 10*' match: resultString]
! !

!InternalPipeTestCase methodsFor: 'testing' stamp: 'dtl 11/25/2001 00:29'!
testNonBlocking

	"(InternalPipeTestCase selector: #testNonBlocking) run"

	| ws str |
	pipe setNonBlocking.
	self writeStuffOnThenClose: pipe.
	ws := self readFromAndClose: pipe writingTo: (WriteStream on: String new).
	str := (ws contents last: 16).
	self should: ['this is line 10*' match: str]
! !

!PipeableOSProcessTestCase methodsFor: 'private' stamp: 'dtl 5/21/2009 23:18'!
isNumberOfOpenFiles: anInteger
	"Answer true if the number of open file handles is anInteger. Wait a little
	bit if necessary to clean up stale references, but give up after a few tries."

	| loops milliseconds |
	loops := 10.
	milliseconds := 50.
	(1 to: loops)
		detect:
			[:i | (self numberOfOpenFiles == anInteger)
				ifFalse:
					[(Delay forMilliseconds: milliseconds) wait].
			self numberOfOpenFiles == anInteger]
		ifNone:
			["This causes the failure to appear as an error rather than a
			failure in the test runner. This kind of problem can be appear
			intermittently, and is different from a functional failure of
			a method."
			self error:
				self numberOfOpenFiles printString,
				' files are open, expected ', anInteger printString].
	^ self numberOfOpenFiles == anInteger
! !

!PipeableOSProcessTestCase methodsFor: 'private' stamp: 'dtl 1/26/2013 12:22'!
numberOfOpenFiles
	"Answer the number of files currently open for this OS process. This works
	only on a system with a /proc filesystem and file descriptors located in a
	directory called /proc/<pid>/fd. On other systems, just answer 0."

	"PipeableOSProcessTestCase new numberOfOpenFiles"

	| d |
	^ (d := self procDir) isNil
		ifTrue: [0]
		ifFalse: [(CommandShell directoryEntryNames: d) size]! !

!PipeableOSProcessTestCase methodsFor: 'private' stamp: 'dtl 1/26/2013 12:19'!
procDir
	"Assuming that we have a /proc file system as on Linux (otherwise answer nil)"

	| path |
	^ procDir ifNil:
		[path := '/proc/' , OSProcess thisOSProcess pid printString, '/fd'.
		(CommandShell directoryExists: path) ifTrue: [procDir := path]]
! !

!PipeableOSProcessTestCase methodsFor: 'testing-process proxy' stamp: 'dtl 4/24/2012 20:21'!
testCommandEcho

	"(PipeableOSProcessTestCase selector: #testCommandEcho) debug"

	| p result |
	self shouldnt: [p := PipeableOSProcess command: '/bin/echo this is a test']
		raise: Warning.
	result := p output.
	p closePipes.
	self assert: ('this is a test*' match: result)! !

!PipeableOSProcessTestCase methodsFor: 'testing-fork squeak' stamp: 'dtl 6/10/2011 16:44'!
testForkHeadlessSqueak

	"(PipeableOSProcessTestCase selector: #testForkHeadlessSqueak) debug"

	| openFileCount child |
	openFileCount := self numberOfOpenFiles.
	self shouldnt:
			[child := PipeableOSProcess forkHeadlessSqueakAndDoThenQuit:
				[OSProcess thisOSProcess stdOut
					nextPutAll: 'hello from headless Squeak child']]
		raise: Warning.
	self should: child upToEndOfFile = 'hello from headless Squeak child'.
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!PipeableOSProcessTestCase methodsFor: 'testing-fork squeak' stamp: 'dtl 6/10/2011 16:43'!
testForkHeadlessSqueak2

	"(PipeableOSProcessTestCase selector: #testForkHeadlessSqueak2) debug"

	| openFileCount child response in |
	openFileCount := self numberOfOpenFiles.
	self shouldnt:
			[child := PipeableOSProcess forkHeadlessSqueakAndDoThenQuit:
				[(Delay forMilliseconds: 100) wait. "wait for data to arrive"
				in := OSProcess thisOSProcess stdIn upToEnd.
				OSProcess thisOSProcess stdOut nextPutAll: in]]
		raise: Warning.
	child nextPutAll: 'hello'.
	child pipeToInput close.
	response := child upToEndOfFile.
	self should: response = 'hello'.
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!PipeableOSProcessTestCase methodsFor: 'testing-fork squeak' stamp: 'dtl 6/19/2019 11:56'!
testForkHeadlessSqueakReadAndWriteReferenceStream
	"Fork a connected Squeak child. The child reads one object through a
	ReferenceStream on its standard input, and writes it to a ReferenceStream
	on its standard output. The parent Squeak reads the object through a
	ReferenceStream on the output stream of the child proxy."

	"(PipeableOSProcessTestCase selector: #testForkHeadlessSqueakReadAndWriteReferenceStream) debug"

	| openFileCount child refStream inputStream result s anObject objectStreamToChild rs |
	rs := Smalltalk at: #ReferenceStream.
	openFileCount := self numberOfOpenFiles.
	anObject := { 1 . 'two' . #three . { 4 } }.
	self shouldnt:
			[ | obj |
				child := PipeableOSProcess forkSqueakAndDoThenQuit:
				["First set standard input to blocking. This avoids a delay to wait for
				data to be available, but note that it is dangerous to do this unless you
				are certain that you know in advance that the correct number of characters
				will be available on the input. If this is not the case, then the VM will block
				on the read and lock up the child squeak process."
				OSProcess thisOSProcess stdIn setBlocking.
				inputStream := rs on: OSProcess thisOSProcess stdIn.
				[ obj := inputStream next. "read one object expected to have been sent by parent" ]
					on: Error
					do: [ :ex | obj := ex printString "copy back to parent process for debugging" ].
				refStream := rs on: OSProcess thisOSProcess stdOut.
				refStream nextPut: obj "echo the object back to the parent Squeak"]]
		raise: Warning.
	objectStreamToChild := rs on: child pipeToInput writer.
	objectStreamToChild nextPut: anObject; flush. "send a complex object to the child"
	s := RWBinaryOrTextStream with: child pipeFromOutput upToEndOfFile.
	s reset.
	inputStream := rs on: s.
	result := inputStream next.
	self assert: anObject equals: result. "n.b. see method comment in testCheckStdinWorksCorrectlyForReferenceStreams"
	self assert: (self isNumberOfOpenFiles: openFileCount).
! !

!PipeableOSProcessTestCase methodsFor: 'testing-fork squeak' stamp: 'dtl 6/19/2019 11:37'!
testForkHeadlessSqueakReferenceStream
	"Fork a connected Squeak child with no user interface. The child sends a complex
	object through a ReferenceStream on its standard output, and the parent Squeak
	reads the object through a ReferenceStream on the output stream of the child proxy."

	"(PipeableOSProcessTestCase selector: #testForkHeadlessSqueakReferenceStream) debug"

	| openFileCount anObject child refStream inputStream result s |
	openFileCount := self numberOfOpenFiles.
	anObject := { 1 . 'two' . #three . { 4 } }.
	self shouldnt:
			[child := PipeableOSProcess forkHeadlessSqueakAndDoThenQuit:
				[refStream := (Smalltalk at: #ReferenceStream) on: OSProcess thisOSProcess stdOut.
				refStream nextPut: anObject]]
		raise: Warning.
	s := RWBinaryOrTextStream with: child pipeFromOutput upToEndOfFile.
	s reset.
	inputStream := (Smalltalk at: #ReferenceStream) on: s.
	result := inputStream next.
	self assert: anObject equals: result.
	self assert: (self isNumberOfOpenFiles: openFileCount).
! !

!PipeableOSProcessTestCase methodsFor: 'testing-fork squeak' stamp: 'dtl 6/7/2015 12:05'!
testForkSqueak

	"(PipeableOSProcessTestCase selector: #testForkSqueak) debug"

	| openFileCount child response in |
	openFileCount := self numberOfOpenFiles.
	self shouldnt:
			[child := PipeableOSProcess forkSqueakAndDoThenQuit:
				[in := OSProcess thisOSProcess stdIn upToEnd.
				OSProcess thisOSProcess stdOut nextPutAll: in]]
		raise: Warning.
	child nextPutAll: 'hello'.
	child pipeToInput close.
	response := child upToEndOfFile.
	self should: response = 'hello'.
	self should: [self isNumberOfOpenFiles: openFileCount]
! !

!PipeableOSProcessTestCase methodsFor: 'testing-fork squeak' stamp: 'dtl 6/19/2019 11:57'!
testForkSqueakReadAndWriteReferenceStream
	"Fork a connected Squeak child. The child reads one object through a
	ReferenceStream on its standard input, and writes it to a ReferenceStream
	on its standard output. The parent Squeak reads the object through a
	ReferenceStream on the output stream of the child proxy."

	"(PipeableOSProcessTestCase selector: #testForkSqueakReadAndWriteReferenceStream) debug"

	| openFileCount child refStream inputStream result s anObject objectStreamToChild rs |
	rs := Smalltalk at: #ReferenceStream.
	openFileCount := self numberOfOpenFiles.
	anObject := { 1 . 'two' . #three . { 4 } }.
	self shouldnt:
			[ | obj |
				child := PipeableOSProcess forkSqueakAndDoThenQuit:
				["First set standard input to blocking. This avoids a delay to wait for
				data to be available, but note that it is dangerous to do this unless you
				are certain that you know in advance that the correct number of characters
				will be available on the input. If this is not the case, then the VM will block
				on the read and lock up the child squeak process."
				OSProcess thisOSProcess stdIn setBlocking.
				inputStream := rs on: OSProcess thisOSProcess stdIn.
				[ obj := inputStream next. "read one object expected to have been sent by parent" ]
					on: Error
					do: [ :ex | obj := ex printString "copy back to parent process for debugging" ].
				refStream := rs on: OSProcess thisOSProcess stdOut.
				refStream nextPut: obj "echo the object back to the parent Squeak"]]
		raise: Warning.
	objectStreamToChild := rs on: child pipeToInput writer.
	objectStreamToChild nextPut: anObject; flush. "send a complex object to the child"
	s := RWBinaryOrTextStream with: child pipeFromOutput upToEndOfFile.
	s reset.
	inputStream := rs on: s.
	result := inputStream next.
	self assert: anObject equals: result. "n.b. see method comment in testCheckStdinWorksCorrectlyForReferenceStreams"
	self assert: (self isNumberOfOpenFiles: openFileCount).
! !

!PipeableOSProcessTestCase methodsFor: 'testing-fork squeak' stamp: 'dtl 6/19/2019 11:38'!
testForkSqueakReferenceStream
	"Fork a connected Squeak child. The child sends a complex object through a
	ReferenceStream on its standard output, and the parent Squeak reads the
	object through a ReferenceStream on the output stream of the child proxy."

	"(PipeableOSProcessTestCase selector: #testForkSqueakReferenceStream) debug"

	| openFileCount anObject child refStream inputStream result s |
	openFileCount := self numberOfOpenFiles.
	anObject := { 1 . 'two' . #three . { 4 } }.
	self shouldnt:
			[child := PipeableOSProcess forkSqueakAndDoThenQuit:
				[refStream := (Smalltalk at: #ReferenceStream) on: OSProcess thisOSProcess stdOut.
				refStream nextPut: anObject]]
		raise: Warning.
	s := RWBinaryOrTextStream with: child pipeFromOutput upToEndOfFile.
	s reset.
	inputStream := (Smalltalk at: #ReferenceStream) on: s.
	result := inputStream next.
	self assert: anObject equals: result.
	self assert: (self isNumberOfOpenFiles: openFileCount).
! !

!PipeableOSProcessTestCase methodsFor: 'testing-fork squeak' stamp: 'dtl 6/22/2019 15:07'!
testStdinReadingReferenceStream
	"Some virtual machines improperly assume that standard input is attached
	to a tty device, and are hard coded to answer at most one character when
	reading from stdin into a string or byte array. This behavior is incorrect in the
	general case of Unix processes that are expected to communicate through
	OS pipes. In particular, it breaks the ability to read seiralized objects from the
	standard input of a virtual machine process.

	The problem can be demonstrated by serialzing a single string. More complex
	object structures will fail outright when deserializing in the child process."

	"(PipeableOSProcessTestCase selector: #testStdinReadingReferenceStream) debug"

	| openFileCount child refStream inputStream result s anObject objectStreamToChild rs |
	rs := Smalltalk at: #ReferenceStream.
	openFileCount := self numberOfOpenFiles.
	anObject := 'ABCDEFG'.
	self shouldnt:
			[ | obj |
				child := PipeableOSProcess forkSqueakAndDoThenQuit:
					[OSProcess thisOSProcess stdIn setBlocking.
					inputStream := rs on: OSProcess thisOSProcess stdIn.
					[ obj := inputStream next. "read one object expected to have been sent by parent" ]
						on: Error
						do: [ :ex | obj := ex printString "copy back to parent process for debugging" ].
					refStream := rs on: OSProcess thisOSProcess stdOut.
					refStream nextPut: obj "echo the object back to the parent Squeak"] ]
		raise: Warning.
	objectStreamToChild := rs on: child pipeToInput writer.
	objectStreamToChild nextPut: anObject; flush. "send a complex object to the child"
	s := RWBinaryOrTextStream with: child pipeFromOutput upToEndOfFile.
	s reset.
	inputStream := rs on: s.
	result := inputStream next.
	self assert: anObject equals: result. "see comment above, may fail with all but first character set to null"
	self assert: (self isNumberOfOpenFiles: openFileCount).
! !

!PipeableOSProcessTestCase methodsFor: 'testing-fork squeak' stamp: 'dtl 6/22/2019 15:06'!
testStdinReadingString
	"Some virtual machines improperly assume that standard input is attached
	to a tty device, and are hard coded to answer at most one character when
	reading from stdin into a string or byte array. This behavior is incorrect in the
	general case of Unix processes that are expected to communicate through
	OS pipes."

	"(PipeableOSProcessTestCase selector: #testStdinReadingString) debug"

	| openFileCount child result aString|
	openFileCount := self numberOfOpenFiles.
	aString := 'ABCDEFG'.
	self shouldnt:
			[ | obj |
				child := PipeableOSProcess forkSqueakAndDoThenQuit:
					[ OSProcess thisOSProcess stdIn setBlocking.
					[ obj := OSProcess thisOSProcess stdIn next: aString size ]
						on: Error
						do: [ :ex | obj := ex printString "copy back to parent process for debugging" ].
					OSProcess thisOSProcess stdOut nextPutAll: obj asString "echo back to the parent Squeak"] ]
		raise: Warning.
	child pipeToInput writer nextPutAll: aString; flush.
	result := child pipeFromOutput upToEndOfFile.
	self assert: aString equals: result. "see comment above, may fail with truncated string"
	self assert: (self isNumberOfOpenFiles: openFileCount).
! !

!PipelineEventsTestCase methodsFor: 'running' stamp: 'dtl 11/24/2006 16:58'!
runAll

	"self new runAll"

	| result suite |
	suite := TestSuite new.

	"testing - external proxy events"
	suite addTest: (self class selector: #testExternalPipelineEvents01).
	suite addTest: (self class selector: #testExternalPipelineEvents02).
	suite addTest: (self class selector: #testExternalProxyEvents01).
	suite addTest: (self class selector: #testExternalProxyEvents02).
	suite addTest: (self class selector: #testExternalProxyEvents03).
	suite addTest: (self class selector: #testExternalProxyEvents04).
	suite addTest: (self class selector: #testExternalProxyErrorPipelineEvents).

	"testing - internal proxy events"
	suite addTest: (self class selector: #testInternalPipelineEvents01).
	suite addTest: (self class selector: #testInternalPipelineEvents02).
	suite addTest: (self class selector: #testInternalProxyEvents01).
	suite addTest: (self class selector: #testInternalProxyEvents02).
	suite addTest: (self class selector: #testInternalProxyEvents03).
	suite addTest: (self class selector: #testInternalProxyEvents04).
	suite addTest: (self class selector: #testInternalProxyErrorPipelineEvents).

	result := suite run.
	self should: [result defects size == 0].
	^ result
! !

!PipelineEventsTestCase methodsFor: 'testing - external proxy events' stamp: 'dtl 4/24/2012 20:01'!
testExternalPipelineEvents01
	"No dependents for the pipeline (use events instead)"

	"(self selector: #testExternalPipelineEvents01) run"

	| pipeline |
	pipeline := self threeExternalProxies.
	self assert: pipeline dependents isEmpty.
	pipeline value upToEndOfFile "evaluate and allow pipes to be closed"
! !

!PipelineEventsTestCase methodsFor: 'testing - external proxy events' stamp: 'dtl 4/24/2012 20:02'!
testExternalPipelineEvents02
	"No events are defined for the pipeline"

	"(self selector: #testExternalPipelineEvents02) run"

	| pipeline |
	pipeline := self threeExternalProxies.
	self assert: pipeline actionMap isEmpty.
	pipeline value upToEndOfFile "evaluate and allow pipes to be closed"
! !

!PipelineEventsTestCase methodsFor: 'testing - external proxy events' stamp: 'dtl 4/24/2012 20:02'!
testExternalProxyErrorPipelineEvents

	"(self selector: #testExternalProxyErrorPipelineEvents) run"

	| pipeline |
	pipeline := self threeExternalProxies.

	"The proxies share an errorPipelineStream."
	self assert: pipeline errorPipelineStream == pipeline first errorPipelineStream.
	self assert: pipeline errorPipelineStream == pipeline second errorPipelineStream.
	self assert: pipeline errorPipelineStream == pipeline third errorPipelineStream.

	"The error pipeline has no events defined."
	self assert: pipeline errorPipelineStream actionMap isEmpty.

	"The error pipeline has no dependents."
	self assert: pipeline errorPipelineStream dependents isEmpty.
	pipeline value upToEndOfFile "evaluate and allow pipes to be closed"
! !

!PipelineEventsTestCase methodsFor: 'testing - external proxy events' stamp: 'dtl 4/24/2012 20:02'!
testExternalProxyEvents01
	"A pipeline is a dependent of the last proxy, which sends #changed: when
	complete. Predecessor proxies could complete out of order if outputs or
	inputs, have been redirected, so the pipeline must ensure that all its
	proxies are complete after the last proxy has indicated its completion."

	"(self selector: #testExternalProxyEvents01) run"

	| pipeline |
	pipeline := self threeExternalProxies.
	self assert: pipeline first dependents isEmpty.
	self assert: pipeline second dependents isEmpty.
	self assert: pipeline third dependents size = 1.
	self assert: pipeline third dependents first == pipeline.
	pipeline value upToEndOfFile "evaluate and allow pipes to be closed"
! !

!PipelineEventsTestCase methodsFor: 'testing - external proxy events' stamp: 'dtl 4/24/2012 20:02'!
testExternalProxyEvents02
	"No actions defined for the elements of a pipeline. Note: Some earlier development
	versions of CommandShell used events heavily, but this was complex and provided
	poor performance."

	"(self selector: #testExternalProxyEvents02) run"

	| pipeline |
	pipeline := self threeExternalProxies.
	self assert: pipeline first actionMap isEmpty.
	self assert: pipeline second actionMap isEmpty.
	self assert: pipeline third actionMap isEmpty.
	pipeline value upToEndOfFile "evaluate and allow pipes to be closed"
! !

!PipelineEventsTestCase methodsFor: 'testing - external proxy events' stamp: 'dtl 4/24/2012 20:03'!
testExternalProxyEvents03
	"Proxy error data ready events and dependents"

	"(self selector: #testExternalProxyEvents03) run"

	| pipeline proxyOne proxyTwo proxyThree |
	pipeline := self threeExternalProxies.

	proxyOne := pipeline first.
	self assert: proxyOne pipeFromError dependents size = 1.
	self assert: proxyOne pipeFromError dependents first == proxyOne.
	self assert: proxyOne pipeFromError actionMap isEmpty.

	proxyTwo := pipeline second.
	self assert: proxyTwo pipeFromError dependents size = 1.
	self assert: proxyTwo pipeFromError dependents first == proxyTwo.
	self assert: proxyTwo pipeFromError actionMap isEmpty.

	proxyThree := pipeline third.
	self assert: proxyThree pipeFromError dependents size = 1.
	self assert: proxyThree pipeFromError dependents first == proxyThree.
	self assert: proxyThree pipeFromError actionMap isEmpty.
	pipeline value upToEndOfFile "evaluate and allow pipes to be closed"
! !

!PipelineEventsTestCase methodsFor: 'testing - external proxy events' stamp: 'dtl 4/24/2012 20:03'!
testExternalProxyEvents04
	"Proxy output data ready events and dependents"

	"(self selector: #testExternalProxyEvents04) run"

	| pipeline proxyOne proxyTwo proxyThree |
	pipeline := self threeExternalProxies.

	proxyOne := pipeline first.
	self assert: proxyOne pipeFromOutput dependents size = 1.
	self assert: proxyOne pipeFromOutput dependents first == proxyOne.
	self assert: proxyOne pipeFromOutput actionMap isEmpty.

	proxyTwo := pipeline second.
	self assert: proxyTwo pipeFromOutput dependents size = 1.
	self assert: proxyTwo pipeFromOutput dependents first == proxyTwo.
	self assert: proxyTwo pipeFromOutput actionMap isEmpty.

	proxyThree := pipeline third.
	self assert: proxyThree pipeFromOutput dependents size = 1.
	self assert: proxyThree pipeFromOutput dependents first == proxyThree.
	self assert: proxyThree pipeFromOutput actionMap isEmpty.
	pipeline value upToEndOfFile "evaluate and allow pipes to be closed"
! !

!PipelineEventsTestCase methodsFor: 'testing - internal proxy events' stamp: 'dtl 4/27/2003 11:34'!
testInternalPipelineEvents01
	"No dependents for the pipeline (use events instead)"

	"(self selector: #testInternalPipelineEvents01) run"

	| pipeline |
	pipeline := self threeInternalProxies.
	self assert: pipeline dependents isEmpty.
! !

!PipelineEventsTestCase methodsFor: 'testing - internal proxy events' stamp: 'dtl 3/26/2006 17:00'!
testInternalPipelineEvents02
	"No events are defined for the pipeline"

	"(self selector: #testInternalPipelineEvents02) run"

	| pipeline |
	pipeline := self threeInternalProxies.
	self assert: pipeline actionMap isEmpty
! !

!PipelineEventsTestCase methodsFor: 'testing - internal proxy events' stamp: 'dtl 11/29/2006 06:37'!
testInternalProxyErrorPipelineEvents

	"(self selector: #testInternalProxyErrorPipelineEvents) run"

	| pipeline |
	pipeline := self threeInternalProxies.

	"The proxies share an errorPipelineStream."
	self assert: pipeline errorPipelineStream == pipeline first errorPipelineStream.
	self assert: pipeline errorPipelineStream == pipeline second errorPipelineStream.
	self assert: pipeline errorPipelineStream == pipeline third errorPipelineStream.

	"The error pipeline has no events defined."
	self assert: pipeline errorPipelineStream actionMap isEmpty.

	"Internal proxies are dependents of the errorPipelineStream, because they
	use is directly as their pipeFromError."
	self assert: (pipeline errorPipelineStream dependents size = 3).
! !

!PipelineEventsTestCase methodsFor: 'testing - internal proxy events' stamp: 'dtl 11/24/2006 13:55'!
testInternalProxyEvents01
	"A pipeline is a dependent of the last proxy, which sends #changed: when
	complete. Predecessor proxies could complete out of order if outputs or
	inputs, have been redirected, so the pipeline must ensure that all its
	proxies are complete after the last proxy has indicated its completion."

	"(self selector: #testInternalProxyEvents01) run"

	| pipeline |
	pipeline := self threeInternalProxies.
	self assert: pipeline first dependents isEmpty.
	self assert: pipeline second dependents isEmpty.
	self assert: pipeline third dependents size = 1.
	self assert: pipeline third dependents first == pipeline
! !

!PipelineEventsTestCase methodsFor: 'testing - internal proxy events' stamp: 'dtl 11/24/2006 13:56'!
testInternalProxyEvents02
	"No actions defined for the elements of a pipeline. Note: Some earlier development
	versions of CommandShell used events heavily, but this was complex and provided
	poor performance."

	"(self selector: #testInternalProxyEvents02) run"

	| pipeline |
	pipeline := self threeInternalProxies.
	self assert: pipeline first actionMap isEmpty.
	self assert: pipeline second actionMap isEmpty.
	self assert: pipeline third actionMap isEmpty.
! !

!PipelineEventsTestCase methodsFor: 'testing - internal proxy events' stamp: 'dtl 11/29/2006 06:35'!
testInternalProxyEvents03
	"Proxy error data ready events and dependents. Internal proxies do not have
	pipeFromError streams, instead they use the errorPipelineStream directly.
	No events or dependencies are required."

	"(self selector: #testInternalProxyEvents03) run"

	| pipeline proxyOne proxyTwo proxyThree |
	pipeline := self threeInternalProxies.

	proxyOne := pipeline first.
	self assert: proxyOne pipeFromError dependents size = 3.
	self assert: (proxyOne pipeFromError dependents includes: proxyOne).
	self assert: proxyOne pipeFromError actionMap isEmpty.

	proxyTwo := pipeline second.
	self assert: proxyTwo pipeFromError dependents size = 3.
	self assert: (proxyOne pipeFromError dependents includes: proxyTwo).
	self assert: proxyTwo pipeFromError actionMap isEmpty.

	proxyThree := pipeline third.
	self assert: proxyThree pipeFromError dependents size = 3.
	self assert: (proxyOne pipeFromError dependents includes: proxyThree).
	self assert: proxyThree pipeFromError actionMap isEmpty.
! !

!PipelineEventsTestCase methodsFor: 'testing - internal proxy events' stamp: 'dtl 11/29/2006 06:32'!
testInternalProxyEvents04
	"Proxy output data ready events and dependents"

	"(self selector: #testInternalProxyEvents04) run"

	| pipeline proxyOne proxyTwo proxyThree |
	pipeline := self threeInternalProxies.

	proxyOne := pipeline first.
	self assert: proxyOne pipeFromOutput dependents size = 1.
	self assert: proxyOne pipeFromOutput dependents first == proxyOne.
	self assert: proxyOne pipeFromOutput actionMap isEmpty.

	proxyTwo := pipeline second.
	self assert: proxyTwo pipeFromOutput dependents size = 1.
	self assert: proxyTwo pipeFromOutput dependents first == proxyTwo.
	self assert: proxyTwo pipeFromOutput actionMap isEmpty.

	proxyThree := pipeline third.
	self assert: proxyThree pipeFromOutput dependents size = 1.
	self assert: proxyThree pipeFromOutput dependents first == proxyThree.
	self assert: proxyThree pipeFromOutput actionMap isEmpty.
! !

!PipelineEventsTestCase methodsFor: 'private - pipeline creation' stamp: 'dtl 5/3/2008 12:54'!
threeExternalProxies

	^ ProxyPipeline fromString: 'ps | cat | cat' shell: CommandShell new
! !

!PipelineEventsTestCase methodsFor: 'private - pipeline creation' stamp: 'dtl 4/27/2003 11:26'!
threeInternalProxies

	^ ProxyPipeline fromString: 'help | copyToOutput | copyToOutput' shell: CommandShell new! !

!PipelineEventsTestCase class methodsFor: 'accessing' stamp: 'dtl 4/26/2003 10:29'!
tempResult
	"A global variable for holding the result of an internal process proxy evaluation.
	This is an ugly kludge."

	^ TempResult! !

!PipelineEventsTestCase class methodsFor: 'accessing' stamp: 'dtl 4/26/2003 10:29'!
tempResult: anObject
	"A global variable for holding the result of an internal process proxy evaluation.
	This is an ugly kludge."

	TempResult := anObject! !

!ShellSyntaxTestCase methodsFor: 'running' stamp: 'dtl 4/20/2003 11:42'!
runAll

	"ShellSyntaxTestCase new runAll"

	| result suite |
	suite := TestSuite new.

	suite addTest: (ShellSyntaxTestCase selector: #testUpOneDirectoryLevel01).
	suite addTest: (ShellSyntaxTestCase selector: #testUpOneDirectoryLevel02).
	suite addTest: (ShellSyntaxTestCase selector: #testUpOneDirectoryLevel03).
	suite addTest: (ShellSyntaxTestCase selector: #testUpOneDirectoryLevel01).
	suite addTest: (ShellSyntaxTestCase selector: #testUpOneDirectoryLevel10).
	suite addTest: (ShellSyntaxTestCase selector: #testUpOneDirectoryLevel11).
	suite addTest: (ShellSyntaxTestCase selector: #testUpOneDirectoryLevel12).
	suite addTest: (ShellSyntaxTestCase selector: #testUpOneDirectoryLevel13).

	suite addTest: (ShellSyntaxTestCase selector: #testStringTokensFrom01).
	suite addTest: (ShellSyntaxTestCase selector: #testStringTokensFrom02).
	suite addTest: (ShellSyntaxTestCase selector: #testStringTokensFrom03).
	suite addTest: (ShellSyntaxTestCase selector: #testStringTokensFrom04).
	suite addTest: (ShellSyntaxTestCase selector: #testStringTokensFrom05).
	suite addTest: (ShellSyntaxTestCase selector: #testStringTokensFrom06).
	suite addTest: (ShellSyntaxTestCase selector: #testStringTokensFrom07).
	suite addTest: (ShellSyntaxTestCase selector: #testStringTokensFrom08).
	suite addTest: (ShellSyntaxTestCase selector: #testStringTokensFrom09).
	suite addTest: (ShellSyntaxTestCase selector: #testStringTokensFrom10).
	suite addTest: (ShellSyntaxTestCase selector: #testStringTokensFrom11).
	suite addTest: (ShellSyntaxTestCase selector: #testStringTokensFrom12).

	suite addTest: (ShellSyntaxTestCase selector: #testArgsFromCommand01).
	suite addTest: (ShellSyntaxTestCase selector: #testArgsFromCommand02).
	suite addTest: (ShellSyntaxTestCase selector: #testArgsFromCommand03).
	suite addTest: (ShellSyntaxTestCase selector: #testArgsFromCommand04).
	suite addTest: (ShellSyntaxTestCase selector: #testArgsFromCommand05).

	suite addTest: (ShellSyntaxTestCase selector: #testExpandArgument01).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandArgument02).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandArgument03).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandArgument04).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandArgument05).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandArgument06).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandArgument07).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandArgument08).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandArgument09).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandArgument10).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandArgument11).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandArgument12).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandArgument13).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandArgument14).

	suite addTest: (ShellSyntaxTestCase selector: #testExpandArgumentFrom01).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandArgumentFrom02).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandArgumentFrom03).

	suite addTest: (ShellSyntaxTestCase selector: #testExpandedPaths01).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandedPaths02).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandedPaths03).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandedPaths04).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandedPaths05).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandedPaths06).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandedPaths07).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandedPaths08).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandedPaths09).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandedPaths10).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandedPaths11).

	suite addTest: (ShellSyntaxTestCase selector: #testExpandedPaths20).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandedPaths21).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandedPaths22).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandedPaths23).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandedPaths24).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandedPaths25).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandedPaths26).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandedPaths27).
	suite addTest: (ShellSyntaxTestCase selector: #testExpandedPaths28).

	suite addTest: (ShellSyntaxTestCase selector: #testNewDirPathFrom01).
	suite addTest: (ShellSyntaxTestCase selector: #testNewDirPathFrom02).
	suite addTest: (ShellSyntaxTestCase selector: #testNewDirPathFrom03).
	suite addTest: (ShellSyntaxTestCase selector: #testNewDirPathFrom04).
	suite addTest: (ShellSyntaxTestCase selector: #testNewDirPathFrom05).

	suite addTest: (ShellSyntaxTestCase selector: #testFirstExpandedArgument01).
	suite addTest: (ShellSyntaxTestCase selector: #testFirstExpandedArgument02).
	suite addTest: (ShellSyntaxTestCase selector: #testFirstExpandedArgument04).
	suite addTest: (ShellSyntaxTestCase selector: #testFirstExpandedArgument05).
	suite addTest: (ShellSyntaxTestCase selector: #testFirstExpandedArgument06).
	suite addTest: (ShellSyntaxTestCase selector: #testFirstExpandedArgument07).
	suite addTest: (ShellSyntaxTestCase selector: #testFirstExpandedArgument08).
	suite addTest: (ShellSyntaxTestCase selector: #testFirstExpandedArgument09).
	suite addTest: (ShellSyntaxTestCase selector: #testFirstExpandedArgument10).
	suite addTest: (ShellSyntaxTestCase selector: #testFirstExpandedArgument11).
	suite addTest: (ShellSyntaxTestCase selector: #testFirstExpandedArgument12).

	suite addTest: (ShellSyntaxTestCase selector: #testAppendPathToPath01).
	suite addTest: (ShellSyntaxTestCase selector: #testAppendPathToPath02).
	suite addTest: (ShellSyntaxTestCase selector: #testAppendPathToPath03).
	suite addTest: (ShellSyntaxTestCase selector: #testAppendPathToPath04).
	suite addTest: (ShellSyntaxTestCase selector: #testAppendPathToPath05).
	suite addTest: (ShellSyntaxTestCase selector: #testAppendPathToPath06).
	suite addTest: (ShellSyntaxTestCase selector: #testAppendPathToPath10).
	suite addTest: (ShellSyntaxTestCase selector: #testAppendPathToPath11).
	suite addTest: (ShellSyntaxTestCase selector: #testAppendPathToPath12).
	suite addTest: (ShellSyntaxTestCase selector: #testAppendPathToPath13).
	suite addTest: (ShellSyntaxTestCase selector: #testAppendPathToPath14).

	result := suite run.
	self should: [result defects size == 0].
	^ result
! !

!ShellSyntaxTestCase methodsFor: 'running' stamp: 'dtl 4/27/2002 18:39'!
setUp

	shellSyntax := ShellSyntax new
! !

!ShellSyntaxTestCase methodsFor: 'testing - path navigation' stamp: 'dtl 5/1/2002 23:46'!
testAppendPathToPath01

	"(ShellSyntaxTestCase selector: #testAppendPathToPath01) run"

	| path |
	self unix ifTrue:
		[path := shellSyntax appendPath: 'hosts' toPath: '/etc'.
		self should: [path = '/etc/hosts']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - path navigation' stamp: 'dtl 5/1/2002 23:47'!
testAppendPathToPath02

	"(ShellSyntaxTestCase selector: #testAppendPathToPath02) run"

	| path |
	self unix ifTrue:
		[path := shellSyntax appendPath: 'etc' toPath: '/'.
		self should: [path = '/etc']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - path navigation' stamp: 'dtl 5/1/2002 23:50'!
testAppendPathToPath03

	"(ShellSyntaxTestCase selector: #testAppendPathToPath03) run"

	| path |
	self unix ifTrue:
		[path := shellSyntax appendPath: 'vi' toPath: '/usr/bin'.
		self should: [path = '/usr/bin/vi']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - path navigation' stamp: 'dtl 5/1/2002 23:50'!
testAppendPathToPath04

	"(ShellSyntaxTestCase selector: #testAppendPathToPath04) run"

	| path |
	self unix ifTrue:
		[path := shellSyntax appendPath: '../bin/vi' toPath: '/usr/bin'.
		self should: [path = '/usr/bin/vi']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - path navigation' stamp: 'dtl 5/1/2002 23:51'!
testAppendPathToPath05

	"(ShellSyntaxTestCase selector: #testAppendPathToPath05) run"

	| path |
	self unix ifTrue:
		[path := shellSyntax appendPath: './vi' toPath: '/usr/bin'.
		self should: [path = '/usr/bin/vi']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - path navigation' stamp: 'dtl 5/1/2002 23:51'!
testAppendPathToPath06

	"(ShellSyntaxTestCase selector: #testAppendPathToPath06) run"

	| path |
	self unix ifTrue:
		[path := shellSyntax appendPath: '../bin/./../bin/vi' toPath: '/usr/bin'.
		self should: [path = '/usr/bin/vi']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - path navigation' stamp: 'dtl 5/1/2002 23:48'!
testAppendPathToPath10

	"(ShellSyntaxTestCase selector: #testAppendPathToPath10) run"

	| path |
	self win32 ifTrue:
		[path := shellSyntax appendPath: 'WINDOWS' toPath: 'C:\'.
		self should: [path = 'C:\WINDOWS']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - path navigation' stamp: 'dtl 5/1/2002 23:49'!
testAppendPathToPath11

	"(ShellSyntaxTestCase selector: #testAppendPathToPath11) run"

	| path |
	self win32 ifTrue:
		[path := shellSyntax appendPath: 'someFileName' toPath: 'C:\WINDOWS'.
		self should: [path = 'C:\WINDOWS\someFileName']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - path navigation' stamp: 'dtl 9/13/2002 07:05'!
testAppendPathToPath12

	"(ShellSyntaxTestCase selector: #testAppendPathToPath12) run"

	| path |
	self unix ifTrue:
		[path := shellSyntax appendPath: '..' toPath: '/usr'.
		self should: [path = '/']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - path navigation' stamp: 'dtl 9/13/2002 07:06'!
testAppendPathToPath13

	"(ShellSyntaxTestCase selector: #testAppendPathToPath13) run"

	| path |
	self unix ifTrue:
		[path := shellSyntax appendPath: '..' toPath: 'usr/bin'.
		self should: [path = 'usr']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - path navigation' stamp: 'dtl 12/27/2002 11:10'!
testAppendPathToPath14

	"(ShellSyntaxTestCase selector: #testAppendPathToPath14) run"

	| path |
	self unix ifTrue:
		[path := shellSyntax appendPath: '..' toPath: 'usr'.
		self should: [path = '']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - path navigation' stamp: 'dtl 1/27/2013 14:01'!
testIsDirectoryPath

	"(ShellSyntaxTestCase selector: #testIsDirectoryPath) debug"

	self unix ifTrue: [
		self should: [ShellSyntax new isDirectoryPath: '/usr/bin'].
		self should: [ShellSyntax new isDirectoryPath: '/'].
		self shouldnt: [ShellSyntax new isDirectoryPath: '/bin/sh'].
		self shouldnt: [ShellSyntax new isDirectoryPath: '/foo'].
		self shouldnt: [ShellSyntax new isDirectoryPath: '/foo/bar'] ].
	self win32 ifTrue: [
		self should: [ShellSyntax new isDirectoryPath: 'C:' ] ]

		
! !

!ShellSyntaxTestCase methodsFor: 'testing - argument tokens' stamp: 'dtl 4/27/2002 18:43'!
testArgsFromCommand01

	"(ShellSyntaxTestCase selector: #testArgsFromCommand01) run"

	| args |
	args := shellSyntax argsFromCommand: 'sleep 6'.
	self should: [args size == 2].
	self should: [args first = 'sleep'].
	self should: [args last = '6']
! !

!ShellSyntaxTestCase methodsFor: 'testing - argument tokens' stamp: 'dtl 4/27/2002 18:44'!
testArgsFromCommand02

	"(ShellSyntaxTestCase selector: #testArgsFromCommand02) run"

	| args |
	args := shellSyntax argsFromCommand: 'ls -l h?s*'.
	self should: [args size == 3].
	self should: [args last = 'h?s*']
! !

!ShellSyntaxTestCase methodsFor: 'testing - argument tokens' stamp: 'dtl 4/27/2002 18:50'!
testArgsFromCommand03

	"(ShellSyntaxTestCase selector: #testArgsFromCommand03) run"

	| args |
	args := shellSyntax argsFromCommand: 'This string contains a ''quoted token'' in the middle'.
	self should: [args size == 8].
	self should: [(args at: 5) = 'quoted token']
! !

!ShellSyntaxTestCase methodsFor: 'testing - argument tokens' stamp: 'dtl 4/27/2002 18:50'!
testArgsFromCommand04

	"(ShellSyntaxTestCase selector: #testArgsFromCommand04) run"

	| args |
	args := shellSyntax argsFromCommand: '''quoted token'' is first'.
	self should: [args size == 3].
	self should: [args first = 'quoted token']
! !

!ShellSyntaxTestCase methodsFor: 'testing - argument tokens' stamp: 'dtl 4/29/2002 21:45'!
testArgsFromCommand05

	"(ShellSyntaxTestCase selector: #testArgsFromCommand05) run"

	| args |
	args := shellSyntax argsFromCommand: 'the last token is ''a quoted token'''.
	self should: [args size == 5].
	self should: [args last = 'a quoted token']
! !

!ShellSyntaxTestCase methodsFor: 'testing - command parsing' stamp: 'dtl 1/21/2007 14:10'!
testDoItStringFrom

	"(ShellSyntaxTestCase selector: #testDoItStringFrom) run"

	self should:
		(shellSyntax doItStringFrom: 'this should answer a string!!')
			= 'this should answer a string'.
	self should:
		(shellSyntax doItStringFrom: 'this should answer a string!!   ')
			= 'this should answer a string'.
	self should:
		(shellSyntax doItStringFrom: 'this should answer nil') isNil
! !

!ShellSyntaxTestCase methodsFor: 'testing - command parsing' stamp: 'dtl 1/21/2007 14:10'!
testIsComment

	"(ShellSyntaxTestCase selector: #testIsComment) run"

	self should: (shellSyntax isComment: '   #comment').
	self should: (shellSyntax isComment: '#comment').
	self shouldnt: (shellSyntax isComment: '   notComment').
	self shouldnt: (shellSyntax isComment: 'notComment').
	self should: (shellSyntax isComment: '')
! !

!ShellSyntaxTestCase methodsFor: 'testing - command parsing' stamp: 'dtl 1/21/2007 14:09'!
testIsDoItCommand

	"(ShellSyntaxTestCase selector: #testIsDoItCommand) run"

	self should: (shellSyntax isDoItCommand: 'this should answer true!!').
	self should: (shellSyntax isDoItCommand: 'this should answer true!!   ').
	self shouldnt: (shellSyntax isDoItCommand: 'this should answer false')! !

!ShellSyntaxTestCase methodsFor: 'testing - command parsing' stamp: 'dtl 1/21/2007 14:12'!
testIsFlagParameter

	"(ShellSyntaxTestCase selector: #testIsFlagParameter) run"

	self should: (shellSyntax isFlagParameter: '-help').
	self shouldnt: (shellSyntax isFlagParameter: 'filename').
	self shouldnt: (shellSyntax isFlagParameter: '')
! !

!ShellSyntaxTestCase methodsFor: 'testing - command parsing' stamp: 'dtl 1/21/2007 14:24'!
testIsRedirectIOFor

	"(ShellSyntaxTestCase selector: #testIsRedirectIOFor) run"

	| r1 r2 |
	r1 := shellSyntax
		redirectIOFor: 'ls /tmp /NOSUCHFILE > /tmp/sqTempOut.tmp 2> /tmp/sqTempErr.tmp'
		inDirectoryPath: nil.
	self should: r1 first = 'ls /tmp /NOSUCHFILE '.
	self should: r1 second isNil.
	self should: (r1 third isKindOf: FileStream).
	self should: r1 third name =  '/tmp/sqTempOut.tmp'.
	r1 third close.
	self should: (r1 fourth isKindOf: FileStream).
	self should: r1 fourth name =  '/tmp/sqTempErr.tmp'.
	r1 fourth close.
	r2 :=shellSyntax
		redirectIOFor: 'cat < /etc/hosts > /tmp/sqHosts.tmp'
		inDirectoryPath: nil.
	self should: r2 first = 'cat '.
	self should: (r2 second isKindOf: FileStream).
	self should: r2 second name = '/etc/hosts'.
	r2 second close.
	self should: (r2 third isKindOf: FileStream).
	self should: r2 third name = '/tmp/sqHosts.tmp'.
	r2 third close.
	self should: r2 fourth isNil
! !

!ShellSyntaxTestCase methodsFor: 'testing - command parsing' stamp: 'dtl 1/21/2007 15:08'!
testStringTokensFrom

	"(ShellSyntaxTestCase selector: #testStringTokensFrom) debug"

	| r |
	r := shellSyntax stringTokensFrom: 'this is 	a	test of 	 the string tokenizer'.
	self should: r second isNil.
	self should: r first size = 8.
	self should: r first last = 'tokenizer'.

	r := shellSyntax stringTokensFrom: 'this is 	a	test of 	 ''the string'' tokenizer'"
	self should: r second isNil.
	self should: r first size = 7.
	self should: r first last = 'tokenizer'.
	self should: r first sixth = 'the tokenizer'.

	r := shellSyntax stringTokensFrom: 'this is 	a	test of'' the string'' tokenizer'".
	self should: r second isNil.
	self should: r first size = 7.
	self should: r first sixth = 'the string'.

	r := shellSyntax stringTokensFrom: 'this is 	a	test of ''the string ''tokenizer'.
	self should: r second isNil.
	self should: r first size = 6.
	self should: r first sixth = 'the string tokenizer'.

	r := shellSyntax stringTokensFrom: 'this is 	a	test of 	 \''the string\'' tokenizer'.
	self should: r second isNil.
	self should: r first size = 8.
	self should: r first sixth = '''the'.
	self should: r first seventh = 'string'''.
	self should: r first eighth = 'tokenizer'.

	r := shellSyntax stringTokensFrom: '''this is'' 	a	test'.
	self should: r second isNil.
	self should: r first size = 3.
	self should: r first first = 'this is'.
	self should: r first second = 'a'.
	self should: r first third = 'test'.

	r := shellSyntax stringTokensFrom: 'this is ''a	test'''.
	self should: r second isNil.
	self should: r first size = 3.
	self should: r first first = 'this'.
	self should: r first second = 'is'.
	self should: r first third = 'a	test'.
	self should: r first third second = Character tab.

	r := shellSyntax stringTokensFrom: '''this is'' 	a	test of 	 \''the string\'' tokenizer '.
	self should: r second isNil.
	self should: r first size = 7.
	self should: r first first = 'this is'.
	self should: r first second = 'a'.
	self should: r first third = 'test'.
	self should: r first fourth = 'of'.
	self should: r first fifth = '''the'.
	self should: r first sixth = 'string'''.
	self should: r first seventh = 'tokenizer'.


	r := shellSyntax stringTokensFrom: 'this is ''a	test'.
	self should: r second = 'unbalanced quotes'.
	self should: r first size = 3.
	self should: r first first = 'this'.
	self should: r first second = 'is'.
	self should: r first third = 'a	test'.
	self should: r first third second = Character tab
! !

!ShellSyntaxTestCase methodsFor: 'testing - command parsing' stamp: 'dtl 1/21/2007 19:15'!
testTokenizeForRedirect

	"(ShellSyntaxTestCase selector: #testTokenizeForRedirect) debug"

	| r |
	r := shellSyntax tokenizeForRedirect: 'one > two < three 2> four five six 2>> seven eight > nine ten >> eleven twelve 2 > thirteen'.
	self should: r size = 15.
	self should: (r at: 1) = 'one '.
	self should: (r at: 2) = #outputRedirect.
	self should: (r at: 3) = ' two '.
	self should: (r at: 4) = #inputRedirect.
	self should: (r at: 5) = ' three '.
	self should: (r at: 6) = #errorRedirect.
	self should: (r at: 7) = ' four five six '.
	self should: (r at: 8) = #errorAppendRedirect.
	self should: (r at: 9) = ' seven eight '.
	self should: (r at: 10) = #outputRedirect.
	self should: (r at: 11) = ' nine ten '.
	self should: (r at: 12) = #outputAppendRedirect.
	self should: (r at: 13) = ' eleven twelve 2 '.
	self should: (r at: 14) = #outputRedirect.
	self should: (r at: 15) = ' thirteen'
! !

!ShellSyntaxTestCase methodsFor: 'testing - token expansion' stamp: 'dtl 4/28/2002 13:40'!
testExpandArgument01
	"This will not work on a non-unix system, as it assumes existence of '/etc/hosts'"

	"(ShellSyntaxTestCase selector: #testExpandArgument01) run"

	| args |
	self unix ifTrue:
		[args := shellSyntax expandArgument: 'ho?ts' inDirectoryPath: '/etc'.
		self shouldnt: [args isEmpty].
		self should: [args includes: 'hosts']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - token expansion' stamp: 'dtl 4/28/2002 13:40'!
testExpandArgument02

	"(ShellSyntaxTestCase selector: #testExpandArgument02) run"

	| args |
	self unix ifTrue:
		[args := shellSyntax expandArgument: '/b?n/s?' inDirectoryPath: '/etc'.
		self shouldnt: [args isEmpty].
		self should: [args includes: '/bin/sh']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - token expansion' stamp: 'dtl 4/28/2002 13:40'!
testExpandArgument03

	"(ShellSyntaxTestCase selector: #testExpandArgument03) run"

	| args |
	self unix ifTrue:
		[args := shellSyntax expandArgument: 'fs*' inDirectoryPath: '/etc'.
		self shouldnt: [args isEmpty].
		self should: [args includes: 'fstab']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - token expansion' stamp: 'dtl 4/28/2002 13:41'!
testExpandArgument04
	"This should work on any system. If no file exists by the given name, then leave
	the name token unmodified."

	"(ShellSyntaxTestCase selector: #testExpandArgument04) run"

	| args |
	args := shellSyntax expandArgument: 'NOSUCHFILE' inDirectoryPath: '/etc'.
	self shouldnt: [args isEmpty].
	self should: [args includes: 'NOSUCHFILE'].
! !

!ShellSyntaxTestCase methodsFor: 'testing - token expansion' stamp: 'dtl 4/28/2002 13:41'!
testExpandArgument05
	"This should work on any system. If no file exists by the given name, then leave
	the name token unmodified. Even the wild card characters should remain as part
	of the literal text."

	"(ShellSyntaxTestCase selector: #testExpandArgument05) run"

	| args |
	args := shellSyntax expandArgument: 'NO?SUCH*FILE' inDirectoryPath: '/etc'.
	self shouldnt: [args isEmpty].
	self should: [args includes: 'NO?SUCH*FILE'].
! !

!ShellSyntaxTestCase methodsFor: 'testing - token expansion' stamp: 'dtl 4/28/2002 13:41'!
testExpandArgument06
	"A fully specified path overrides the default directory path."

	"(ShellSyntaxTestCase selector: #testExpandArgument06) run"

	| args |
	self unix ifTrue:
		[args := shellSyntax expandArgument: '/us*/b?n/v?' inDirectoryPath: '/NO/SUCH/PATH'.
		self shouldnt: [args isEmpty].
		self should: [args includes: '/usr/bin/vi']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - token expansion' stamp: 'dtl 4/28/2002 13:41'!
testExpandArgument07
	"File not found, keep the literal token"

	"(ShellSyntaxTestCase selector: #testExpandArgument07) run"

	| args |
	args := shellSyntax expandArgument: 'ho?ts' inDirectoryPath: '/NO/SUCH/DIRECTORY'.
	self shouldnt: [args isEmpty].
	self should: [args includes: 'ho?ts'].
! !

!ShellSyntaxTestCase methodsFor: 'testing - token expansion' stamp: 'dtl 4/28/2002 13:41'!
testExpandArgument08
	"File not found, keep the literal token"

	"(ShellSyntaxTestCase selector: #testExpandArgument08) run"

	| args |
	args := shellSyntax expandArgument: 'ho?ts' inDirectoryPath: nil.
	self shouldnt: [args isEmpty].
	self should: [args includes: 'ho?ts'].
! !

!ShellSyntaxTestCase methodsFor: 'testing - token expansion' stamp: 'dtl 4/28/2002 13:41'!
testExpandArgument09
	"File not found, keep the literal token. Implementation may optimize to check
	explicitly for a flag string, but the result should be the same."

	"(ShellSyntaxTestCase selector: #testExpandArgument09) run"

	| args |
	args := shellSyntax expandArgument: '-flag' inDirectoryPath: '/etc'.
	self should: [args size == 1].
	self should: [args includes: '-flag'].
! !

!ShellSyntaxTestCase methodsFor: 'testing - token expansion' stamp: 'dtl 4/28/2002 13:41'!
testExpandArgument10
	"This should work on any system. If no file exists by the given name, then leave
	the name token unmodified."

	"(ShellSyntaxTestCase selector: #testExpandArgument10) run"

	| args |
	args := shellSyntax expandArgument: 'no*such*file???' inDirectoryPath: '/etc'.
	self shouldnt: [args isEmpty].
	self should: [args includes: 'no*such*file???'].
! !

!ShellSyntaxTestCase methodsFor: 'testing - token expansion' stamp: 'dtl 4/28/2002 13:41'!
testExpandArgument11
	"This should work on any system. If no file exists by the given name, then leave
	the name token unmodified."

	"(ShellSyntaxTestCase selector: #testExpandArgument11) run"

	| args |
	args := shellSyntax expandArgument: nil inDirectoryPath: '/etc'.
	self should: [args isEmpty].
! !

!ShellSyntaxTestCase methodsFor: 'testing - token expansion' stamp: 'dtl 4/28/2002 14:34'!
testExpandArgument12
	"Character ranges. Look for /etc/horts or /etc/hosts or /etc/hotts, and answer /etc/hosts."

	"(ShellSyntaxTestCase selector: #testExpandArgument12) run"

	| args |
	self unix ifTrue:
		[args := shellSyntax expandArgument: 'ho[r-t]ts' inDirectoryPath: '/etc'.
		self shouldnt: [args isEmpty].
		self should: [args includes: 'hosts']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - token expansion' stamp: 'dtl 4/28/2002 14:35'!
testExpandArgument13
	"Character ranges. Answer /etc/hosts."

	"(ShellSyntaxTestCase selector: #testExpandArgument13) run"

	| args |
	self unix ifTrue:
		[args := shellSyntax expandArgument: 'ho[tsr]ts' inDirectoryPath: '/etc'.
		self shouldnt: [args isEmpty].
		self should: [args includes: 'hosts']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - token expansion' stamp: 'dtl 4/28/2002 14:36'!
testExpandArgument14
	"Character ranges. Answer /etc/hosts."

	"(ShellSyntaxTestCase selector: #testExpandArgument14) run"

	| args |
	self unix ifTrue:
		[args := shellSyntax expandArgument: 'ho[s]ts' inDirectoryPath: '/etc'.
		self shouldnt: [args isEmpty].
		self should: [args includes: 'hosts']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - token expansion' stamp: 'dtl 4/28/2002 13:47'!
testExpandArgumentFrom01

	"(ShellSyntaxTestCase selector: #testExpandArgumentFrom01) run"

	| args |
	self unix ifTrue:
		[args := shellSyntax
			expandArgumentsFrom: #('-help' '/b?n/s?' 'ho?ts' 'fs*' 'NOSUCHFILE')
			inDirectoryPath: '/etc'.
		self shouldnt: [args isEmpty].
		self should: [args includes: '-help'].
		self should: [args includes: '/bin/sh'].
		self should: [args includes: '/bin/su'].
		self should: [args includes: 'hosts'].
		self should: [args includes: 'NOSUCHFILE'].
		self shouldnt: [args includes: nil].
		self shouldnt: [args includes: '']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - token expansion' stamp: 'dtl 1/25/2013 19:09'!
testExpandArgumentFrom02

	"(ShellSyntaxTestCase selector: #testExpandArgumentFrom02) run"

	| args |
	self unix ifTrue:
		[args := shellSyntax
			expandArgumentsFrom: #('this' 'is' 'a' 'test' '*.image' '/us*/b?n/v?')
			inDirectoryPath: CommandShell defaultPathString.
		self shouldnt: [args isEmpty].
		self should: [args includes: 'this'].
		self should: [args includes: 'is'].
		self should: [args includes: 'a'].
		self should: [args includes: 'test'].
		self should: [args includes: '/usr/bin/vi'].
		self shouldnt: [args includes: nil].
		self shouldnt: [args includes: ''].
		self should: [(args detect: [:e | '*.image' match: e] ifNone: []) notNil]]
! !

!ShellSyntaxTestCase methodsFor: 'testing - token expansion' stamp: 'dtl 4/28/2002 13:51'!
testExpandArgumentFrom03

	"(ShellSyntaxTestCase selector: #testExpandArgumentFrom03) run"

	| args |
	self unix ifTrue:
		[args := shellSyntax
			expandArgumentsFrom: #('this' 'is' 'a' 'test' '*.image' '/us*/b?n/v?')
			inDirectoryPath: nil.
		self shouldnt: [args isEmpty].
		self should: [args includes: 'this'].
		self should: [args includes: 'is'].
		self should: [args includes: 'a'].
		self should: [args includes: 'test'].
		self should: [args includes: '/usr/bin/vi'].
		self shouldnt: [args includes: nil].
		self shouldnt: [args includes: ''].
		self should: [(args detect: [:e | '*.image' match: e] ifNone: []) notNil]]
! !

!ShellSyntaxTestCase methodsFor: 'testing - path expansion' stamp: 'dtl 4/28/2002 11:55'!
testExpandedPaths01

	"(ShellSyntaxTestCase selector: #testExpandedPaths01) run"

	| args |
	self unix ifTrue:
		[args := shellSyntax expandedPathsFrom: '/e*c/h*s' beginningAt: nil.
		self shouldnt: [args isEmpty].
		self should: [args includes: '/etc/hosts']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - path expansion' stamp: 'dtl 4/28/2002 11:56'!
testExpandedPaths02

	"(ShellSyntaxTestCase selector: #testExpandedPaths02) run"

	| args |
	self unix ifTrue:
		[args := shellSyntax expandedPathsFrom: 'e*c/h*s' beginningAt: '/'.
		self shouldnt: [args isEmpty].
		self should: [args includes: '/etc/hosts']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - path expansion' stamp: 'dtl 4/28/2002 11:56'!
testExpandedPaths03

	"(ShellSyntaxTestCase selector: #testExpandedPaths03) run"

	| args |
	self unix ifTrue:
		[args := shellSyntax expandedPathsFrom: '/usr/bin/vi' beginningAt: nil.
		self should: [args size == 1].
		self should: [args includes: '/usr/bin/vi']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - path expansion' stamp: 'dtl 4/28/2002 11:56'!
testExpandedPaths04

	"(ShellSyntaxTestCase selector: #testExpandedPaths04) run"

	| args |
	self unix ifTrue:
		[args := shellSyntax expandedPathsFrom: 'bin/vi' beginningAt: '/usr'.
		self should: [args size == 1].
		self should: [args includes: '/usr/bin/vi']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - path expansion' stamp: 'dtl 4/28/2002 11:56'!
testExpandedPaths05

	"(ShellSyntaxTestCase selector: #testExpandedPaths05) run"

	| args |
	self unix ifTrue:
		[args := shellSyntax expandedPathsFrom: '/usr/*/vi' beginningAt: nil.
		self should: [args size == 1].
		self should: [args includes: '/usr/bin/vi']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - path expansion' stamp: 'dtl 4/28/2002 11:57'!
testExpandedPaths06

	"(ShellSyntaxTestCase selector: #testExpandedPaths06) run"

	| args |
	self unix ifTrue:
		[args := shellSyntax expandedPathsFrom: '/usr/bin/../bin/./../bin/../../usr/bin/vi' beginningAt: nil.
		self should: [args size == 1].
		self should: [args includes: '/usr/bin/vi']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - path expansion' stamp: 'dtl 4/28/2002 11:57'!
testExpandedPaths07

	"(ShellSyntaxTestCase selector: #testExpandedPaths07) run"

	| args |
	self unix ifTrue:
		[args := shellSyntax expandedPathsFrom: '/bin/../bin/./../bin/../../usr/bin/vi' beginningAt: '/usr'.
		self should: [args size == 1].
		self should: [args includes: '/usr/bin/vi']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - path expansion' stamp: 'dtl 4/28/2002 11:57'!
testExpandedPaths08

	"(ShellSyntaxTestCase selector: #testExpandedPaths08) run"

	| args |
	self unix ifTrue:
		[args := shellSyntax
			expandedPathsFrom: '/usr/bin/../bin/./../bin/../../../../../usr/bin/vi'
			beginningAt: nil.
		self should: [args size == 1].
		self should: [args includes: '/usr/bin/vi']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - path expansion' stamp: 'dtl 4/28/2002 11:58'!
testExpandedPaths09

	"(ShellSyntaxTestCase selector: #testExpandedPaths09) run"

	| args |
	self unix ifTrue:
		[args := shellSyntax expandedPathsFrom: '../../../../../../../../../../usr/bin/vi' beginningAt: nil.
		self should: [args size == 1].
		self should: [args includes: '/usr/bin/vi']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - path expansion' stamp: 'dtl 4/28/2002 11:59'!
testExpandedPaths10

	"(ShellSyntaxTestCase selector: #testExpandedPaths10) run"

	| args |
	self unix ifTrue:
		[args := shellSyntax expandedPathsFrom: '/' beginningAt: '/'.
		self should: [args size == 1].
		self should: [args includes: '/']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - path expansion' stamp: 'dtl 4/28/2002 10:30'!
testExpandedPaths11

	"(ShellSyntaxTestCase selector: #testExpandedPaths11) run"

	| args |
	args := shellSyntax expandedPathsFrom: '*.image' beginningAt: nil.
	self shouldnt: [args isEmpty].
	self should: ['*.image' match: args first].
! !

!ShellSyntaxTestCase methodsFor: 'testing - path expansion' stamp: 'dtl 4/28/2002 12:08'!
testExpandedPaths20

	"(ShellSyntaxTestCase selector: #testExpandedPaths20) run"

	| args |
	self win32 ifTrue:
		[args := shellSyntax expandedPathsFrom: 'C:\WINDOWS\*.*' beginningAt: nil.
		self shouldnt: [args isEmpty].
		self should: [args includes: 'C:\WINDOWS\WRITE.EXE']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - path expansion' stamp: 'dtl 4/28/2002 12:08'!
testExpandedPaths21

	"(ShellSyntaxTestCase selector: #testExpandedPaths21) run"

	| args |
	self win32 ifTrue:
		[args := shellSyntax expandedPathsFrom: '*.*' beginningAt: 'C:\WINDOWS'.
		self shouldnt: [args isEmpty].
		self should: [args includes: 'C:\WINDOWS\WRITE.EXE']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - path expansion' stamp: 'dtl 4/28/2002 12:08'!
testExpandedPaths22

	"(ShellSyntaxTestCase selector: #testExpandedPaths22) run"

	| args |
	self win32 ifTrue:
		[args := shellSyntax expandedPathsFrom: 'C:\*.*' beginningAt: nil.
		self shouldnt: [args isEmpty].
		self should: [args includes: 'C:\AUTOEXEC.BAT']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - path expansion' stamp: 'dtl 4/28/2002 12:08'!
testExpandedPaths23

	"(ShellSyntaxTestCase selector: #testExpandedPaths23) run"

	| args |
	self win32 ifTrue:
		[args := shellSyntax expandedPathsFrom: 'C:\CONFIG.*' beginningAt: nil.
		self shouldnt: [args isEmpty].
		self should: [args includes: 'C:\CONFIG.SYS']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - path expansion' stamp: 'dtl 4/28/2002 12:08'!
testExpandedPaths24

	"(ShellSyntaxTestCase selector: #testExpandedPaths24) run"

	| args |
	self win32 ifTrue:
		[args := shellSyntax expandedPathsFrom: 'C:\CONFIG.*' beginningAt: '\'.
		self shouldnt: [args isEmpty].
		self should: [args includes: 'C:\CONFIG.SYS']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - path expansion' stamp: 'dtl 4/28/2002 12:12'!
testExpandedPaths25
	"If no expanded path is found, answer an empty collection"

	"(ShellSyntaxTestCase selector: #testExpandedPaths25) run"

	| args |
	args := shellSyntax expandedPathsFrom: 'CONFIG.*' beginningAt: nil.
	self should: [args isEmpty].
! !

!ShellSyntaxTestCase methodsFor: 'testing - path expansion' stamp: 'dtl 4/28/2002 12:39'!
testExpandedPaths26

	"(ShellSyntaxTestCase selector: #testExpandedPaths26) run"

	| args |
	self win32 ifTrue:
		[args := shellSyntax expandedPathsFrom: '..\..\..\..\..\..\..\..\..\WINDOWS\*.*' beginningAt: nil.
		self shouldnt: [args isEmpty].
		self should: [args includes: 'C:\WINDOWS\WRITE.EXE']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - path expansion' stamp: 'dtl 4/28/2002 12:39'!
testExpandedPaths27

	"(ShellSyntaxTestCase selector: #testExpandedPaths27) run"

	| args |
	self win32 ifTrue:
		[args := shellSyntax
			expandedPathsFrom: '..\..\..\..\..\..\..\..\..\WINDOWS\*.*'
			beginningAt: 'C:\WINDOWS'.
		self shouldnt: [args isEmpty].
		self should: [args includes: 'C:\WINDOWS\WRITE.EXE']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - path expansion' stamp: 'dtl 4/28/2002 12:40'!
testExpandedPaths28

	"(ShellSyntaxTestCase selector: #testExpandedPaths28) run"

	| args |
	self win32 ifTrue:
		[args := shellSyntax
			expandedPathsFrom: '..\..\..\..\..\..\..\..\..\WINDOWS\.\*.*'
			beginningAt: 'C:\WINDOWS'.
		self shouldnt: [args isEmpty].
		self should: [args includes: 'C:\WINDOWS\WRITE.EXE']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - first expanded path' stamp: 'dtl 4/29/2002 21:54'!
testFirstExpandedArgument01

	"(ShellSyntaxTestCase selector: #testFirstExpandedArgument01) run"

	|  arg |
	self unix ifTrue:
		[arg := shellSyntax firstExpandedArgument: 'm?*l' inDirectoryPath: '/usr/bin'.
		self shouldnt: [arg isEmpty].
		self should: ['/usr/bin/m*l' match: arg].
		self shouldnt: [arg = '/usr/bin/m?*l']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - first expanded path' stamp: 'dtl 4/29/2002 21:54'!
testFirstExpandedArgument02

	"(ShellSyntaxTestCase selector: #testFirstExpandedArgument02) run"

	|  arg |
	arg := shellSyntax firstExpandedArgument: 'm?*l' inDirectoryPath: '/no/such/directory'.
	self shouldnt: [arg isEmpty].
	self should: [arg = '/no/such/directory/m?*l']
! !

!ShellSyntaxTestCase methodsFor: 'testing - first expanded path' stamp: 'dtl 4/29/2002 21:54'!
testFirstExpandedArgument03

	"(ShellSyntaxTestCase selector: #testFirstExpandedArgument03) run"

	|  arg |
	arg := shellSyntax firstExpandedArgument: 'no*such*file???' inDirectoryPath: '/usr/bin'.
	self shouldnt: [arg isEmpty].
	self should: [arg = '/usr/bin/no*such*file???']
! !

!ShellSyntaxTestCase methodsFor: 'testing - first expanded path' stamp: 'dtl 4/29/2002 21:54'!
testFirstExpandedArgument04

	"(ShellSyntaxTestCase selector: #testFirstExpandedArgument04) run"

	|  arg |
	self unix ifTrue:
		[arg := shellSyntax firstExpandedArgument: '/usr/bin/vi' inDirectoryPath: '/usr/bin'.
		self shouldnt: [arg isEmpty].
		self should: [arg = '/usr/bin/vi']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - first expanded path' stamp: 'dtl 4/29/2002 21:55'!
testFirstExpandedArgument05

	"(ShellSyntaxTestCase selector: #testFirstExpandedArgument05) run"

	|  arg |
	self unix ifTrue:
		[arg := shellSyntax firstExpandedArgument: '../bin/vi' inDirectoryPath: '/usr/bin'.
		self shouldnt: [arg isEmpty].
		self should: [arg = '/usr/bin/vi']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - first expanded path' stamp: 'dtl 4/29/2002 21:55'!
testFirstExpandedArgument06

	"(ShellSyntaxTestCase selector: #testFirstExpandedArgument06) run"

	|  arg |
	arg := shellSyntax firstExpandedArgument: nil inDirectoryPath: '/usr/bin'.
	self should: [arg = '']
! !

!ShellSyntaxTestCase methodsFor: 'testing - first expanded path' stamp: 'dtl 5/11/2002 20:11'!
testFirstExpandedArgument07

	"(ShellSyntaxTestCase selector: #testFirstExpandedArgument07) run"

	|  arg |
	self unix ifTrue:
		[arg := shellSyntax firstExpandedArgument: '/usr/b[a-z]n/vi' inDirectoryPath: nil.
		self shouldnt: [arg isEmpty].
		self should: [arg = '/usr/bin/vi']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - first expanded path' stamp: 'dtl 5/11/2002 20:11'!
testFirstExpandedArgument08

	"(ShellSyntaxTestCase selector: #testFirstExpandedArgument08) run"

	|  arg |
	self unix ifTrue:
		[arg := shellSyntax firstExpandedArgument: '/us[r-r]/b[a-z]n/vi' inDirectoryPath: nil.
		self shouldnt: [arg isEmpty].
		self should: [arg = '/usr/bin/vi']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - first expanded path' stamp: 'dtl 5/11/2002 20:12'!
testFirstExpandedArgument09

	"(ShellSyntaxTestCase selector: #testFirstExpandedArgument09) run"

	|  arg |
	self unix ifTrue:
		[arg := shellSyntax firstExpandedArgument: '/us[z-a]/bin/vi' inDirectoryPath: nil.
		self shouldnt: [arg isEmpty].
		self should: [arg = '/us[z-a]/bin/vi']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - first expanded path' stamp: 'dtl 5/11/2002 23:37'!
testFirstExpandedArgument10

	"(ShellSyntaxTestCase selector: #testFirstExpandedArgument10) run"

	|  arg |
	self unix ifTrue:
		[arg := shellSyntax firstExpandedArgument: '/t[l-n]p' inDirectoryPath: nil.
		self should: [arg = '/tmp']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - first expanded path' stamp: 'dtl 9/12/2002 07:52'!
testFirstExpandedArgument11

	"(ShellSyntaxTestCase selector: #testFirstExpandedArgument11) run"

	|  arg |
	self unix ifTrue:
		[arg := shellSyntax firstExpandedArgument: '../bin/v?' inDirectoryPath: '/usr/bin'.
		self shouldnt: [arg isEmpty].
		self should: [arg = '/usr/bin/vi']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - first expanded path' stamp: 'dtl 9/12/2002 09:21'!
testFirstExpandedArgument12

	"(ShellSyntaxTestCase selector: #testFirstExpandedArgument12) run"

	|  arg |
	self unix ifTrue:
		[arg := shellSyntax firstExpandedArgument: '../bin' inDirectoryPath: '/usr/bin'.
		self shouldnt: [arg isEmpty].
		self should: [arg = '/usr/bin']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - new dir path' stamp: 'dtl 4/20/2003 11:37'!
testNewDirPathFrom01

	"(ShellSyntaxTestCase selector: #testNewDirPathFrom01) run"

	| path |
	self unix ifTrue:
		[path := shellSyntax newDirPath: 'b?n' from: '/usr'.
		self should: [path = '/usr/bin']]


	
! !

!ShellSyntaxTestCase methodsFor: 'testing - new dir path' stamp: 'dtl 4/20/2003 11:38'!
testNewDirPathFrom02

	"(ShellSyntaxTestCase selector: #testNewDirPathFrom02) run"

	| path |
	self unix ifTrue:
		[path := shellSyntax newDirPath: '..' from: '/usr/bin'.
		self should: [path = '/usr']]


	
! !

!ShellSyntaxTestCase methodsFor: 'testing - new dir path' stamp: 'dtl 4/20/2003 11:39'!
testNewDirPathFrom03

	"(ShellSyntaxTestCase selector: #testNewDirPathFrom03) run"

	| path |
	self unix ifTrue:
		[path := shellSyntax newDirPath: '.././bin' from: '/usr/bin'.
		self should: [path = '/usr/bin']]


	
! !

!ShellSyntaxTestCase methodsFor: 'testing - new dir path' stamp: 'dtl 4/20/2003 11:39'!
testNewDirPathFrom04

	"(ShellSyntaxTestCase selector: #testNewDirPathFrom04) run"

	| path |
	self unix ifTrue:
		[path := shellSyntax newDirPath: '../../../../..' from: '/usr/bin'.
		self should: [path = '/']]


	
! !

!ShellSyntaxTestCase methodsFor: 'testing - new dir path' stamp: 'dtl 4/20/2003 11:40'!
testNewDirPathFrom05

	"(ShellSyntaxTestCase selector: #testNewDirPathFrom05) run"

	| path |
	self unix ifTrue:
		[path := shellSyntax newDirPath: '../../../../../usr' from: '/usr/bin'.
		self should: [path = '/usr']]


	
! !

!ShellSyntaxTestCase methodsFor: 'testing - string tokenizer' stamp: 'dtl 5/11/2002 20:19'!
testStringTokensFrom01

	"(ShellSyntaxTestCase selector: #testStringTokensFrom01) run"

	| t |
	t := shellSyntax stringTokensFrom: 'this is 	a	test'.
	self should: [t last isNil].
	self should: [t first size == 4].
	self should: [t first last = 'test'].
	self should: [t first first = 'this'].
! !

!ShellSyntaxTestCase methodsFor: 'testing - string tokenizer' stamp: 'dtl 5/11/2002 20:20'!
testStringTokensFrom02

	"(ShellSyntaxTestCase selector: #testStringTokensFrom02) run"

	| t |
	t := shellSyntax stringTokensFrom: 'this ''is 	a''	test'.
	self should: [t last isNil].
	self should: [t first size == 3].
	self should: [t first last = 'test'].
	self should: [t first first = 'this'].
! !

!ShellSyntaxTestCase methodsFor: 'testing - string tokenizer' stamp: 'dtl 5/11/2002 20:20'!
testStringTokensFrom03

	"(ShellSyntaxTestCase selector: #testStringTokensFrom03) run"

	| t |
	t := shellSyntax stringTokensFrom: '	this ''is 	a''	test	'.
	self should: [t last isNil].
	self should: [t first size == 3].
	self should: [t first last = 'test'].
	self should: [t first first = 'this'].
! !

!ShellSyntaxTestCase methodsFor: 'testing - string tokenizer' stamp: 'dtl 5/11/2002 20:20'!
testStringTokensFrom04

	"(ShellSyntaxTestCase selector: #testStringTokensFrom04) run"

	| t |
	t := shellSyntax stringTokensFrom: ' this ''is 	a''	test '.
	self should: [t last isNil].
	self should: [t first size == 3].
	self should: [t first last = 'test'].
	self should: [t first first = 'this'].
! !

!ShellSyntaxTestCase methodsFor: 'testing - string tokenizer' stamp: 'dtl 5/11/2002 20:21'!
testStringTokensFrom05

	"(ShellSyntaxTestCase selector: #testStringTokensFrom05) run"

	| t |
	t := shellSyntax stringTokensFrom: ' this \''is 	a\''	test '.
	self should: [t last isNil].
	self should: [t first size == 4].
	self should: [t first last = 'test'].
	self should: [t first second = '''is'].
	self should: [t first third = 'a'''].
	self should: [t first first = 'this'].
! !

!ShellSyntaxTestCase methodsFor: 'testing - string tokenizer' stamp: 'dtl 5/11/2002 20:21'!
testStringTokensFrom06

	"(ShellSyntaxTestCase selector: #testStringTokensFrom06) run"

	| t |
	t := shellSyntax stringTokensFrom: ' this ''is 	a	test '.
	self should: [t last = 'unbalanced quotes'].
	self should: [t first size == 2].
	self should: [t first last = 'is 	a	test '].
	self should: [t first first = 'this'].
! !

!ShellSyntaxTestCase methodsFor: 'testing - string tokenizer' stamp: 'dtl 5/11/2002 20:21'!
testStringTokensFrom07

	"(ShellSyntaxTestCase selector: #testStringTokensFrom07) run"

	| t |
	t := shellSyntax stringTokensFrom: 'this is 	a	te\st'.
	self should: [t last isNil].
	self should: [t first size == 4].
	self should: [t first last = 'test'].
	self should: [t first first = 'this'].
! !

!ShellSyntaxTestCase methodsFor: 'testing - string tokenizer' stamp: 'dtl 5/11/2002 20:21'!
testStringTokensFrom08

	"(ShellSyntaxTestCase selector: #testStringTokensFrom08) run"

	| t |
	t := shellSyntax stringTokensFrom: 'this ''is\ a'' test'.
	self should: [t last isNil].
	self should: [t first size == 3].
	self should: [t first last = 'test'].
	self should: [t first second = 'is\ a'].
	self should: [t first first = 'this'].
! !

!ShellSyntaxTestCase methodsFor: 'testing - string tokenizer' stamp: 'dtl 5/11/2002 20:21'!
testStringTokensFrom09

	"(ShellSyntaxTestCase selector: #testStringTokensFrom09) run"

	| t |
	t := shellSyntax stringTokensFrom: '''this is'' 	a	test'.
	self should: [t last isNil].
	self should: [t first size == 3].
	self should: [t first last = 'test'].
	self should: [t first first = 'this is'].
! !

!ShellSyntaxTestCase methodsFor: 'testing - string tokenizer' stamp: 'dtl 5/11/2002 20:21'!
testStringTokensFrom10

	"(ShellSyntaxTestCase selector: #testStringTokensFrom10) run"

	| t |
	t := shellSyntax stringTokensFrom: 'this is 	''a	test'''.
	self should: [t last isNil].
	self should: [t first size == 3].
	self should: [t first last = 'a	test'].
	self should: [t first first = 'this'].
! !

!ShellSyntaxTestCase methodsFor: 'testing - string tokenizer' stamp: 'dtl 5/11/2002 20:22'!
testStringTokensFrom11

	"(ShellSyntaxTestCase selector: #testStringTokensFrom11) run"

	| t |
	t := shellSyntax stringTokensFrom: 'this'' is ''	a	test'.
	self should: [t last isNil].
	self should: [t first size == 3].
	self should: [t first last = 'test'].
	self should: [t first first = 'this is '].
! !

!ShellSyntaxTestCase methodsFor: 'testing - string tokenizer' stamp: 'dtl 5/11/2002 20:22'!
testStringTokensFrom12

	"(ShellSyntaxTestCase selector: #testStringTokensFrom12) run"

	| t |
	t := shellSyntax stringTokensFrom: 'this ''is ''	a	test'.
	self should: [t last isNil].
	self should: [t first size == 4].
	self should: [t first last = 'test'].
	self should: [t first first = 'this'].
! !

!ShellSyntaxTestCase methodsFor: 'testing - up one directory level' stamp: 'dtl 5/1/2002 21:02'!
testUpOneDirectoryLevel01

	"(ShellSyntaxTestCase selector: #testUpOneDirectoryLevel01) run"

	|  upOne |
	self unix ifTrue:
		[upOne := shellSyntax upOneDirectoryLevel: '/usr/bin'.
		self should: [upOne = '/usr']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - up one directory level' stamp: 'dtl 5/1/2002 21:02'!
testUpOneDirectoryLevel02

	"(ShellSyntaxTestCase selector: #testUpOneDirectoryLevel02) run"

	|  upOne |
	self unix ifTrue:
		[upOne := shellSyntax upOneDirectoryLevel: '/usr'.
		self should: [upOne = '/']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - up one directory level' stamp: 'dtl 5/1/2002 21:03'!
testUpOneDirectoryLevel03

	"(ShellSyntaxTestCase selector: #testUpOneDirectoryLevel03) run"

	|  upOne |
	self unix ifTrue:
		[upOne := shellSyntax upOneDirectoryLevel: '/'.
		self should: [upOne = '/']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - up one directory level' stamp: 'dtl 12/27/2002 11:12'!
testUpOneDirectoryLevel04

	"(ShellSyntaxTestCase selector: #testUpOneDirectoryLevel04) run"

	|  upOne |
	upOne := shellSyntax upOneDirectoryLevel: ''.
	self should: [upOne = '..']
! !

!ShellSyntaxTestCase methodsFor: 'testing - up one directory level' stamp: 'dtl 5/1/2002 21:07'!
testUpOneDirectoryLevel10

	"(ShellSyntaxTestCase selector: #testUpOneDirectoryLevel10) run"

	|  upOne |
	self win32 ifTrue:
		[upOne := shellSyntax upOneDirectoryLevel: 'C:\Windows\temp'.
		self should: [upOne = 'C:\Windows']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - up one directory level' stamp: 'dtl 5/1/2002 21:07'!
testUpOneDirectoryLevel11

	"(ShellSyntaxTestCase selector: #testUpOneDirectoryLevel11) run"

	|  upOne |
	self win32 ifTrue:
		[upOne := shellSyntax upOneDirectoryLevel: 'C:\Windows'.
		self should: [upOne = 'C:\']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - up one directory level' stamp: 'dtl 5/1/2002 21:08'!
testUpOneDirectoryLevel12

	"(ShellSyntaxTestCase selector: #testUpOneDirectoryLevel12) run"

	|  upOne |
	self win32 ifTrue:
		[upOne := shellSyntax upOneDirectoryLevel: 'C:\'.
		self should: [upOne = 'C:\']]
! !

!ShellSyntaxTestCase methodsFor: 'testing - up one directory level' stamp: 'dtl 5/1/2002 21:08'!
testUpOneDirectoryLevel13

	"(ShellSyntaxTestCase selector: #testUpOneDirectoryLevel13) run"

	|  upOne |
	self win32 ifTrue:
		[upOne := shellSyntax upOneDirectoryLevel: 'D:\Windows\temp'.
		self should: [upOne = 'D:\Windows']]
! !

!ShellSyntaxTestCase methodsFor: 'platform dependency' stamp: 'dtl 10/30/2007 19:00'!
unix

	^ ShellSyntax new platformName = 'unix'! !

!ShellSyntaxTestCase methodsFor: 'platform dependency' stamp: 'dtl 10/30/2007 19:00'!
win32

	^ ShellSyntax new platformName = 'Win32'! !

!ShellWindowMorph methodsFor: 'menu commands' stamp: 'dtl 9/15/2012 18:59'!
accept

	self model cr; flush; processCommand: self commandLineInput asString echo: false
! !

!ShellWindowMorph methodsFor: 'updating' stamp: 'dtl 1/21/2007 13:02'!
appendEntry

	| str |
	"Append the text in the model's writeStream to the editable text. "
	textMorph asText size > model characterLimit ifTrue:
		["Knock off first half of text"
		self selectInvisiblyFrom: 1 to: textMorph asText size // 2.
		self replaceSelectionWith: Text new].
	self selectInvisiblyFrom: textMorph asText size + 1 to: textMorph asText size.
	str := model contents.
	(str size > 0) ifTrue:
		[self replaceSelectionWith: (Text
			string: str
			attribute: (TextFontChange fontNumber: self textStyle defaultFontIndex)).
		self selectInvisiblyFrom: textMorph asText size + 1 to: textMorph asText size.
		model reset]

! !

!ShellWindowMorph methodsFor: 'updating' stamp: 'dtl 5/2/2020 10:53'!
update: something

	(something == #doCommand)
		ifTrue:
			[^ self accept].
	(something == #exit)
		ifTrue:
			[^ self owner delete].
	^ super update: something
! !

!ShellWindowMorph methodsFor: 'command input' stamp: 'dtl 3/18/2001 18:17'!
commandLineInput

	^ (self text copyFrom: self positionAfterPromptString to: self text size) asString.

! !

!ShellWindowMorph methodsFor: 'command input' stamp: 'dtl 4/7/2001 12:21'!
positionAfterPromptString
	"Answer the index of the first character after the last prompt string in my text. If
	not found, then assume that the contents of the text are all intended to be command
	input."

	| t loc |
	t := self text.
	(1 to: (t size - model promptString size))
		reverseDo: [:i |
			((loc := t findString: model promptString startingAt: i) ~= 0)
				ifTrue: [^ loc + model promptString size]].
	^ 1
! !

!ShellWindowMorph methodsFor: 'model access' stamp: 'dtl 1/21/2007 10:33'!
setText: aText
	scrollBar setValue: 0.0.
	textMorph
		ifNil: [textMorph := TtyTextMorphForEditView new
						contents: aText wrappedTo: self innerBounds width-6.
				textMorph setEditView: self.
				textMorph setTextStyle: self textStyle.
				scroller addMorph: textMorph]
		ifNotNil: [textMorph newContents: aText].
	self hasUnacceptedEdits: false.
	self setScrollDeltas.! !

!ShellWindowMorph methodsFor: 'model access' stamp: 'dtl 11/18/2009 22:20'!
textStyle
	"A fixed width font for the text morph"

	^ (TextStyle named: 'DefaultFixedTextStyle')
		ifNil: [TextStyle default]! !

!ShellWindowMorph class methodsFor: 'instance creation' stamp: 'dtl 1/21/2007 09:57'!
open
	"Open a new CommandShell, and answer the instance of ShellWindowMorph which it uses."

	"ShellWindowMorph open"

	^ CommandShell open dependents at: 2! !

!ShellSyntax methodsFor: 'path name expansion' stamp: 'dtl 1/25/2013 19:12'!
appendPath: aPathString toPath: startingPathString 
	"ShellSyntax new appendPath: 'hosts' toPath: '/etc'"
	"ShellSyntax new appendPath: 'etc' toPath: '/'"
	"ShellSyntax new appendPath: 'hosts' toPath: '/etc'"
	"ShellSyntax new appendPath: 'WINDOWS' toPath: 'C:\'"
	"ShellSyntax new appendPath: 'someFileName' toPath: 'C:\WINDOWS'"

	| newPath |
	^ (aPathString findTokens: CommandShell pathSeparator)
		inject: startingPathString
		into: [:dirPath :nextPart | 
			nextPart = '..'
				ifTrue: [newPath := self upOneDirectoryLevel: dirPath]
				ifFalse: [nextPart = '.'
						ifTrue: [newPath := dirPath]
						ifFalse: [newPath := (self isAtFileSystemRoot: dirPath)
										ifTrue: [dirPath , nextPart]
										ifFalse: [dirPath , CommandShell pathSeparator , nextPart]]].
			newPath]! !

!ShellSyntax methodsFor: 'path name expansion' stamp: 'dtl 1/25/2013 19:12'!
expandArgument: aString inDirectoryPath: aDefaultFileDirectoryPath
	"Perform globbing expansion of a command argument. If argument is not a
	pathname, use aDefaultFileDirectory as the context for globbing. Answer a
	(possibly empty) collection of all matching paths relative to the default
	directory path."

	"ShellSyntax new expandArgument: 'ho?ts' inDirectoryPath: '/etc'"
	"ShellSyntax new expandArgument: '/b?n/s?' inDirectoryPath: '/etc'"
	"ShellSyntax new expandArgument: 'fs*' inDirectoryPath: '/etc'"
	"ShellSyntax new expandArgument: 'NOSUCHFILE' inDirectoryPath: '/etc'"
	"ShellSyntax new expandArgument: '/us*/b?n/v?' inDirectoryPath: '/etc'"
	"ShellSyntax new expandArgument: 'b?n/v?' inDirectoryPath: '/usr'"
	"ShellSyntax new expandArgument: nil inDirectoryPath: '/etc'"

	| dirPath pathNames newArgs |
	aString ifNil: [^ Array new: 0].
	dirPath := (aDefaultFileDirectoryPath
				ifNil: [self workingDirectory])
					ifNil: [CommandShell defaultPathString].
	pathNames := (self containsExpansionTokens: aString)
				ifTrue: [self expandedPathsFrom: aString beginningAt: dirPath]
				ifFalse: [OrderedCollection new].
	newArgs := pathNames collect:
				[:p | (aDefaultFileDirectoryPath notNil and: [p beginsWith: aDefaultFileDirectoryPath, CommandShell pathSeparator])
					ifTrue: [(ReadStream on: p) next: aDefaultFileDirectoryPath size + CommandShell pathSeparator size; upToEnd]
					ifFalse: [p]].
	newArgs isEmpty ifTrue: [newArgs add: aString].
	^ newArgs
! !

!ShellSyntax methodsFor: 'path name expansion' stamp: 'dtl 1/25/2013 19:09'!
expandArgumentsFrom: argArray inDirectoryPath: aDefaultFileDirectoryPath
	"Perform globbing expansion of command arguments. For each argument which is not a
	pathname, use aDefaultFileDirectory as the context for globbing."

	"ShellSyntax new
		expandArgumentsFrom: #('-help' '/b?n/s?' 'ho?ts' 'fs*' 'NOSUCHFILE')
		inDirectoryPath: '/etc'"
	"ShellSyntax new
		expandArgumentsFrom: #('this' 'is' 'a' 'test' 'Sq*log' '/us*/b?n/v?')
		inDirectoryPath: CommandShell defaultPathString"
	"ShellSyntax new
		expandArgumentsFrom: #('this' 'is' 'a' 'test' 'Sq*log' '/us*/b?n/v?')
		inDirectoryPath: nil"

	| newArgs |
	newArgs := OrderedCollection new.
	argArray do:
		[:arg |
		(self isFlagParameter: arg)
			ifTrue:
				[newArgs add: arg]
			ifFalse:
				[newArgs addAll: (self
					expandArgument: arg
					inDirectoryPath: aDefaultFileDirectoryPath)]].
	^ newArgs! !

!ShellSyntax methodsFor: 'path name expansion' stamp: 'dtl 4/25/2020 18:54'!
expandPathParts: pathParts beginningAt: root
	"Walk directory tree and answer a collection of matching path strings."

	| firstPart remainder dirPaths names dirNames basePath |
	(pathParts size == 0)
		ifTrue:
			["Should never get here, but just in case"
			^ Array with: root].
	firstPart := pathParts first.
	remainder := pathParts allButFirst.
	(firstPart = '.')
		ifTrue: "Stay at the current directory level"
			[dirPaths := Array with: root]
		ifFalse:
			[(firstPart = '..') "Move up a directory level if possible"
				ifTrue:
					[dirPaths := Array with: (self upOneDirectoryLevel: root)]
				ifFalse: "Normal case, a directory name"
					[remainder isEmpty
						ifTrue:
							["This condition terminates recursion"
							names := self glob: firstPart inDirectory: root.
							^ (root = CommandShell pathSeparator)
								ifTrue: [^ names collect: [:n | root, n]]
								ifFalse: [^ names collect: [:n | root, CommandShell pathSeparator, n]]]
						ifFalse:
							["Continue recursion until no more elements"
							dirNames := self glob: firstPart
											names: (CommandShell directoryNamesInPath: root).
							(('*', CommandShell pathSeparator) match: root)
								ifTrue: [basePath := root]
								ifFalse: [basePath := root, CommandShell pathSeparator].
							dirPaths := dirNames collect: [:d | basePath, d]]]].
		^ dirPaths
			inject: OrderedCollection new
			into: [:result :dir |
				result addAll: (self expandPathParts: remainder beginningAt: dir).
				result]
! !

!ShellSyntax methodsFor: 'path name expansion' stamp: 'dtl 12/28/2002 09:48'!
expandedPathsFrom: aPathString beginningAt: firstPartOfPath
	"Answer a collection of all paths which match aPathString. If aPathString is a relative path,
	expand the path relative to firstPartOfPath."

	 "ShellSyntax new expandedPathsFrom: '/e*c/h*s' beginningAt: nil"
	 "ShellSyntax new expandedPathsFrom: 'e*c/h*s' beginningAt: '/'"
	 "ShellSyntax new expandedPathsFrom: '/usr/bin/vi' beginningAt: nil"
	 "ShellSyntax new expandedPathsFrom: 'bin/vi' beginningAt: '/usr'"
	 "ShellSyntax new expandedPathsFrom: '/usr/*/vi' beginningAt: nil"
	 "ShellSyntax new expandedPathsFrom: '/usr/bin/../bin/./../bin/../../usr/bin/vi' beginningAt: nil"
	 "ShellSyntax new expandedPathsFrom: '/bin/../bin/./../bin/../../usr/bin/vi' beginningAt: '/usr'"
	 "ShellSyntax new expandedPathsFrom: '/usr/bin/../bin/./../bin/../../../../../usr/bin/vi' beginningAt: nil"
	 "ShellSyntax new expandedPathsFrom: '../../../../../../usr/bin/vi' beginningAt: nil"
	 "ShellSyntax new expandedPathsFrom: '/' beginningAt: '/'"
	 "ShellSyntax new expandedPathsFrom: '*.image' beginningAt: nil"
	 "ShellSyntax new expandedPathsFrom: 'C:\WINDOWS\*.*' beginningAt: nil"
	 "ShellSyntax new expandedPathsFrom: '*.*' beginningAt: 'C:\WINDOWS'"
	 "ShellSyntax new expandedPathsFrom: 'C:\*.*' beginningAt: nil"
	 "ShellSyntax new expandedPathsFrom: 'C:\CONFIG.*' beginningAt: nil"
	 "ShellSyntax new expandedPathsFrom: 'C:\CONFIG.*' beginningAt: '\'"

	^ (self isAbsolutePath: aPathString)
		ifTrue: [self expandedPathsFromAbsolutePath: aPathString]
		ifFalse: [self expandedPathsFromRelativePath: aPathString beginningAt: firstPartOfPath]
! !

!ShellSyntax methodsFor: 'path name expansion' stamp: 'dtl 1/25/2013 19:12'!
expandedPathsFromAbsolutePath: anAbsolutePathString
	"Answer a collection of all paths which match anAbsolutePathString."

	 "ShellSyntax new expandedPathsFromAbsolutePath: '/e*c/h*s'"
	 "ShellSyntax new expandedPathsFromAbsolutePath: 'e*c/h*s'"
	 "ShellSyntax new expandedPathsFromAbsolutePath: '/usr/bin/vi'"
	 "ShellSyntax new expandedPathsFromAbsolutePath: 'bin/vi'"
	 "ShellSyntax new expandedPathsFromAbsolutePath: '/usr/*/vi'"
	 "ShellSyntax new expandedPathsFromAbsolutePath: '/usr/bin/../bin/./../bin/../../usr/bin/vi'"
	 "ShellSyntax new expandedPathsFromAbsolutePath: '/bin/../bin/./../bin/../../usr/bin/vi'"
	 "ShellSyntax new expandedPathsFromAbsolutePath: '/usr/bin/../bin/./../bin/../../../../../usr/bin/vi'"
	 "ShellSyntax new expandedPathsFromAbsolutePath: '../../../../../../usr/bin/vi'"
	 "ShellSyntax new expandedPathsFromAbsolutePath: '/'"
	 "ShellSyntax new expandedPathsFromAbsolutePath: '*.image'"
	 "ShellSyntax new expandedPathsFromAbsolutePath: 'C:\WINDOWS\*.*'"
	 "ShellSyntax new expandedPathsFromAbsolutePath: '*.*'"
	 "ShellSyntax new expandedPathsFromAbsolutePath: 'C:\*.*'"
	 "ShellSyntax new expandedPathsFromAbsolutePath: 'C:\CONFIG.*'"
	 "ShellSyntax new expandedPathsFromAbsolutePath: 'C:\CONFIG.*'"

	| result pathParts a prefix dirPathString root |
	result := OrderedCollection new.
	a := self splitLocationPrefixFromPath: anAbsolutePathString.
	prefix := a at: 1.
	dirPathString := a at: 2.
	pathParts := dirPathString findTokens: CommandShell pathSeparator.
	root := prefix, CommandShell pathSeparator.
	result addAll: (self expandPathParts: pathParts beginningAt: root).
	^ result

! !

!ShellSyntax methodsFor: 'path name expansion' stamp: 'dtl 1/25/2013 19:12'!
expandedPathsFromRelativePath: aPathString beginningAt: firstPartOfPath
	"Answer a collection of all paths which match aPathString. Expand the path relative to firstPartOfPath."

	 "ShellSyntax new expandedPathsFromRelativePath: 'e*c/h*s' beginningAt: '/'"
	 "ShellSyntax new expandedPathsFromRelativePath: 'usr/b?n/vi' beginningAt: '/'"
	 "ShellSyntax new expandedPathsFromRelativePath: 'bin/vi' beginningAt: '/usr'"
	 "ShellSyntax new expandedPathsFromRelativePath: 'usr/*/vi' beginningAt: nil"
	 "ShellSyntax new expandedPathsFromRelativePath: 'usr/bin/../bin/./../bin/../../usr/bin/vi' beginningAt: '/'"
	 "ShellSyntax new expandedPathsFromRelativePath: 'bin/../bin/./../bin/../../usr/bin/vi' beginningAt: '/usr'"
	 "ShellSyntax new expandedPathsFromRelativePath: '../../../../../../usr/bin/vi' beginningAt: '/'"
	 "ShellSyntax new expandedPathsFromRelativePath: '*.image' beginningAt: nil"
	 "ShellSyntax new expandedPathsFromRelativePath: '*.*' beginningAt: 'C:\WINDOWS'"

	| result pathParts root |
	result := OrderedCollection new.
	pathParts := aPathString findTokens: CommandShell pathSeparator.
	root := firstPartOfPath isNil
				ifTrue: [CommandShell defaultPathString]
				ifFalse: [firstPartOfPath].
	result addAll: (self expandPathParts: pathParts beginningAt: root).
	^ result

! !

!ShellSyntax methodsFor: 'path name expansion' stamp: 'dtl 4/19/2015 09:34'!
findExecutablePathFor: aString inDirectoryPath: pathString
	"Look for the executable, following Unix conventions for searching the PATH.
	If no likely candidate is found, answer nil."

	"ShellSyntax new findExecutablePathFor: 'bash' inDirectoryPath: nil"
	"ShellSyntax new findExecutablePathFor: 'ReadMe.txt' inDirectoryPath: nil"
	"ShellSyntax new findExecutablePathFor: 'SqueakDebug.log' inDirectoryPath: nil"
	"ShellSyntax new findExecutablePathFor: 'noSuchFileName' inDirectoryPath: nil"
	"ShellSyntax new findExecutablePathFor: 'a' inDirectoryPath: nil"
	"ShellSyntax new findExecutablePathFor: 'sqcat' inDirectoryPath: '/home/lewis/bin'"

	| delimiter path localNames fullName fileExists |
	self canAccessOSProcess ifFalse: [^ nil].
	delimiter := CommandShell pathNameDelimiter.
	path := (pathString
				ifNil: [self workingDirectory])
					ifNil: [CommandShell defaultPathString].
	"Unix compatibility note: If aString contains wildcard characters,
	it is expanded in the context of the current working directory. Expansion
	does not take place in the context of the PATH directories."
	(aString includes: delimiter)
		ifTrue:
			["A fully or partially qualified path, do not search PATH"
			^ (self expandedPathsFrom: aString beginningAt: pathString)
				detect: [:fileName |
					(CommandShell fileExists: fileName inPath: path) and: [self isExecutable: fileName]]
				ifNone: [nil]]
		ifFalse:
			["Look for the file in the PATH locations"
			localNames := self glob: aString inDirectory: path.
			(localNames size == 0)
				ifTrue:
					["Name was not expanded, so use the unmodified value of aString"
					localNames := Array with: aString].
			(self pathEntriesInDirectoryPath: path)
				do: [:pathName |
					localNames
						do: [:fileName |
							fileExists := [ CommandShell useFileSystem
									ifTrue: [ CommandShell fileExists: fileName inDirectory: (pathName perform: #asFileReference) ]
									ifFalse: [ CommandShell fileExists: fileName inDirectory: ((Smalltalk at: #FileDirectory) on: pathName) ]
								] on: (Smalltalk at: #InvalidDirectoryError ifAbsent: [ Error ]) "Pharo does not have InvalidDirectoryError"
									do: [:e | false].
							fileExists ifTrue:
								[fullName := pathName, CommandShell pathSeparator, fileName.
								(self isExecutable: fullName)
									ifTrue: [^ fullName]]]].
			^ nil]! !

!ShellSyntax methodsFor: 'path name expansion' stamp: 'dtl 1/29/2013 20:27'!
firstExpandedArgument: aString inDirectoryPath: aPath
	"Expand a single argument and answer a fully qualified path to the first matching
	name. If no match, answer the literal path and file name (which does not exist).
	If aString is nil, answer an empty string. This method may be used to expand a single
	argument, such as the target for a command output redirection, where the target is
	expected to resolve to a single file name."

	"ShellSyntax new firstExpandedArgument: 'b?*h' inDirectoryPath: '/usr/bin'"
	"ShellSyntax new firstExpandedArgument: 'b?*h' inDirectoryPath: '/no/such/directory'"
	"ShellSyntax new firstExpandedArgument: 'no*such*file???' inDirectoryPath: '/usr/bin'"
	"ShellSyntax new firstExpandedArgument: '/usr/bin/vi' inDirectoryPath: '/usr/bin'"
	"ShellSyntax new firstExpandedArgument: '../bin/vi' inDirectoryPath: '/usr/bin'"
	"ShellSyntax new firstExpandedArgument: '../b?n' inDirectoryPath: '/usr/bin'"
	"ShellSyntax new firstExpandedArgument: nil inDirectoryPath: '/usr/bin'"

	| expanded path trimmedString |
	aString ifNil: [^ ''].
	trimmedString := CommandShell withBlanksTrimmed: aString.
	expanded := self expandArgument: trimmedString inDirectoryPath: aPath.
	path := expanded isEmpty
			ifTrue: [trimmedString]
			ifFalse: [expanded first].
	^ self newPathFor: path fromDefault: aPath
! !

!ShellSyntax methodsFor: 'path name expansion' stamp: 'dtl 4/20/2003 11:31'!
newDirPath: aPath from: initialPath
	"Answer a path string for a change directory command. Change from initialPath
	(usually the current working directory) to the new path, where aPath may be
	either an absolute path name (fully specified from the root) or a relative path
	name (relative to initialPath)."

	"self new newDirPath: 'b?n' from: '/usr'"
	"self new newDirPath: '..' from: '/usr/bin'"
	"self new newDirPath: '.././bin' from: '/usr/bin'"
	"self new newDirPath: '../../../../..' from: '/usr/bin'"
	"self new newDirPath: '../../../../../usr' from: '/usr/bin'"

	^ (self expandedPathsFrom: aPath beginningAt: initialPath)
		at: 1
		ifAbsent: [nil]

! !

!ShellSyntax methodsFor: 'path name expansion' stamp: 'dtl 1/2/2002 22:09'!
newPathFor: aPathString fromDefault: startingPathString
	"Answer a new path starting from startingPathString if aPathString is a,
	relative path, otherwise just answer aPathString unmodified."

	"ShellSyntax new newPathFor: 'hosts' fromDefault: '/etc'"
	"ShellSyntax new newPathFor: 'three' fromDefault: 'one/two'"
	"ShellSyntax new newPathFor: 'one/two/three' fromDefault: ''"
	"ShellSyntax new newPathFor: '/hosts' fromDefault: '/etc'"
	"ShellSyntax new newPathFor: 'WINDOWS' fromDefault: 'C:\'"
	"ShellSyntax new newPathFor: 'D:\WINDOWS' fromDefault: 'C:\'"
	"ShellSyntax new newPathFor: 'D:WINDOWS' fromDefault: 'C:\'"

	^ (self isAbsolutePath: aPathString)
		ifTrue:
			[aPathString]
		ifFalse:
			[self appendPath: (self splitLocationPrefixFromPath: aPathString) last
					toPath: startingPathString]
! !

!ShellSyntax methodsFor: 'path name expansion' stamp: 'dtl 1/4/2002 21:19'!
pathStringAboveRoot
	"Magic string indicating location above the file system root. For Unix, this just
	points to the file system root. For Windows, it points to one level above the C: drive."

	^ '[]'! !

!ShellSyntax methodsFor: 'path name expansion' stamp: 'dtl 10/13/2008 06:26'!
programNameAndArgumentsFrom: aString inDirectoryPath: pathString findExecutable: expandExePath
	"Answer an array with the name of the program to run, and with the expanded
	arguments list. If expandExePath is true, search the file system for an executable
	program to run, otherwise use the literal command name."

	"ShellSyntax new
		programNameAndArgumentsFrom: 'sleep 6'
		inDirectoryPath: '/etc'
		findExecutable: true"
	"ShellSyntax new
		programNameAndArgumentsFrom: 'sleep 6'
		inDirectoryPath: '/etc'
		findExecutable: false"
	"ShellSyntax new
		programNameAndArgumentsFrom: 'ls -l h?s*'
		inDirectoryPath: '/etc'
		findExecutable: true"

	| tokens tok args exe |
	tokens := self argsFromCommand: aString.
	tokens size == 0
		ifTrue: [tok := '']
		ifFalse: [tok := tokens at: 1].
	args := self
		expandArgumentsFrom: (tokens copyFrom: 2 to: tokens size)
		inDirectoryPath: pathString.
	exe := expandExePath
		ifTrue: [self findExecutablePathFor: tok inDirectoryPath: pathString]
		ifFalse: [tok].
	^ exe ifNotNil: [Array with: exe with: args]
! !

!ShellSyntax methodsFor: 'command string parsing' stamp: 'dtl 5/11/2002 20:15'!
argsFromCommand: aString
	"Answer a collection of strings from a whitespace delimited string. Single quote characters
	protect substrings from expansion to tokens. Single quote characters may be escaped by
	the backslash character to prevent this interpretation."

	^ (self stringTokensFrom: aString) first
! !

!ShellSyntax methodsFor: 'command string parsing' stamp: 'dtl 1/29/2013 20:29'!
doItStringFrom: aCommandString
	"Answer a string which can be evaluated as Smalltalk doIt, or nil."

	| s |
	s := CommandShell withBlanksTrimmed: aCommandString.
	s last == $!!
		ifTrue: [^ aCommandString copyUpToLast: $!!]
		ifFalse: [^ nil]! !

!ShellSyntax methodsFor: 'command string parsing' stamp: 'dtl 1/21/2007 14:07'!
isComment: aString
	"Answer true if aString is empty or if its first non-space character is commentChar"

	^ (aString size == 0)
		or:
			[aString do: [:e | (e isSeparator not)
							ifTrue: [^ e == self commentChar]].
			false]! !

!ShellSyntax methodsFor: 'command string parsing' stamp: 'dtl 1/29/2013 20:29'!
isDoItCommand: aCommandString
	"Answer true if aCommandString should be evaluated as Smalltalk doIt."

	^ (CommandShell withBlanksTrimmed: aCommandString) last == $!!! !

!ShellSyntax methodsFor: 'command string parsing' stamp: 'dtl 1/21/2007 14:12'!
isFlagParameter: aString
	"Answer true if aString begins with $- (the convention for command flags for Unix)"

	^ (aString size > 0) and: [(aString at: 1) == $-]! !

!ShellSyntax methodsFor: 'command string parsing' stamp: 'dtl 5/2/2020 17:07'!
redirectIOFor: commandString inDirectoryPath: dirPathString
	"Handle IO redirection. Answer a four element array with the command string
	(with IO tokens removed); and stdin, stdout and stderr if specified for
	redirection."

	"ShellSyntax new
		redirectIOFor: 'ls /tmp /NOSUCHFILE > /tmp/sqTempOut.tmp 2> /tmp/sqTempErr.tmp'
		inDirectoryPath: nil"
	"ShellSyntax new
		redirectIOFor: 'cat < /etc/hosts > /tmp/sqHosts.tmp'
		inDirectoryPath: nil"

	| cmd tokenStream tok target input output error |
	cmd := nil.
	input := output := error := nil.
	"Default to nil unless overridden by commandString."
	tokenStream := ReadStream on: (self tokenizeForRedirect: commandString).
	[tokenStream atEnd]
		whileFalse:
			[tok := tokenStream next.
			tok == #inputRedirect
				ifTrue: ["Do input redirection"
					target := self firstExpandedArgument: tokenStream next
								inDirectoryPath: dirPathString.
					"Use StandardFileStream to prevent multi-byte interpretation."
					input := CommandShell readOnlyFileNamed: target.
					input
						ifNil: [self inform: 'Cannot open ' , target , ', using default stdin']]
				ifFalse: [tok == #outputRedirect
						ifTrue: ["Do output redirection"
							target := self firstExpandedArgument: tokenStream next
										inDirectoryPath: dirPathString.
							output := self truncatedOutputFile: target.
							output ifNil:
									[self inform: 'Cannot open ' , target , ', using default stdout']]
						ifFalse: [tok == #outputAppendRedirect
								ifTrue: ["Do output redirection, appended to existing output file if any."
									target := self firstExpandedArgument: tokenStream next
												inDirectoryPath: dirPathString.
									output := FileStream fileNamed: target.
									output isNil
										ifTrue: [self inform: 'Cannot open ' , target , ', using default stdout']
										ifFalse: [output setToEnd]]
								ifFalse: [tok == #errorRedirect
										ifTrue: ["Do error redirection"
											target := self firstExpandedArgument: tokenStream next
														inDirectoryPath: dirPathString.
											error := self truncatedOutputFile: target.
											error ifNil:
													[self inform: 'Cannot open ' , target , ', using default stdout']]
										ifFalse: [tok == #errorAppendRedirect
												ifTrue: ["Do error redirection, appended to existing error file if any. "
													target := self firstExpandedArgument: tokenStream next
																inDirectoryPath: dirPathString.
													error := FileStream fileNamed: target.
													error isNil
														ifTrue: [self inform: 'Cannot open ' , target , ', using default stdout']
														ifFalse: [error setToEnd]]
												ifFalse: [cmd isNil
														ifTrue: [cmd := tok]
														ifFalse: [self inform: 'Ack!! Pfft!! IO redirection parsing error.']]]]]]].
	^ Array
		with: cmd
		with: input
		with: output
		with: error! !

!ShellSyntax methodsFor: 'command string parsing' stamp: 'dtl 1/29/2013 20:27'!
splitPipelineCommands: aCommand
	"Answer a list of the individual commands in a command pipeline string,
	delimited by the pipe character."

	^ (aCommand findTokens: self pipeCharToken) collect: [:e | CommandShell withBlanksTrimmed: e]
! !

!ShellSyntax methodsFor: 'command string parsing' stamp: 'dtl 1/21/2007 15:11'!
stringTokensFrom: aString
	"Answer a two element array with a collection of strings from a whitespace
	delimited string, and with an optional error message. Single quote characters
	protect substrings from expansion to tokens. Single quote characters may be
	escaped by the backslash character to prevent this interpretation."

	| result r w errorMessage quoteEnabled t |
	result := OrderedCollection new.
	r := ReadStream on: aString.
	w := WriteStream on: String new.
	errorMessage := nil.
	(quoteEnabled := r peek == self quoteChar) ifTrue: [r next].
	[r atEnd] whileFalse:
		[t := r next.
		(t == self quoteChar)
			ifTrue:
				[quoteEnabled := quoteEnabled not]
			ifFalse:
				[quoteEnabled
					ifTrue:
						[w nextPut: t]
					ifFalse:
						[(t == self escapeChar)
							ifTrue:
								["An escaped character is treated as a literal character."
								t := r next.
								t isNil
									ifTrue: ["FIXME: This would indicate an escaped end of line"]
									ifFalse: [w nextPut: t]]
							ifFalse:
								[t isSeparator
									ifTrue:
										["Whitespace delimits tokens."
										(w isEmpty) ifFalse: [result add: w contents].
										w := WriteStream on: String new.
										[r peek notNil and: [r peek isSeparator]] whileTrue: [r next].]
									ifFalse:
										[w nextPut: t]]]]].
	quoteEnabled ifTrue: [errorMessage := 'unbalanced quotes'].
	(w isEmpty) ifFalse: [result add: w contents].
	^ Array with: result with: errorMessage
! !

!ShellSyntax methodsFor: 'command string parsing' stamp: 'dtl 2/24/2013 10:25'!
tokenizeForRedirect: aString
	"Answer a collection of tokens for IO redirection. Answers a collection of
	tokens, where each token is either a String, or a Symbol in:
	#(#inputRedirect #outputRedirect #outputAppendRedirect #errorRedirect #errorAppendRedirect)"

	"ShellSyntax new tokenizeForRedirect: 'one > two < three 2> four five six 2>> seven eight > nine ten >> eleven twelve 2 > thirteen'"

	| oc rs ws c redirectToken tok |
	oc := OrderedCollection new.
	rs := ReadStream on: aString.
	ws := WriteStream on: String new.
	[rs atEnd]
		whileFalse:
			[c := rs next.
			((c == $2) and: [rs peek == $>])
				ifTrue:
					[rs next.
					(rs peek == $>)
						ifTrue:
							[rs next.
							redirectToken := #errorAppendRedirect]
						ifFalse:
							[redirectToken := #errorRedirect].
					c := ws contents.
					(c size > 0)
						ifTrue:
							[oc add: c.
							ws resetContents].
					oc add: redirectToken]
				ifFalse:
					[(c == $>)
						ifTrue:
							[(rs peek == $>)
								ifTrue:
									[rs next.
									redirectToken := #outputAppendRedirect]
								ifFalse:
									[redirectToken := #outputRedirect].
							c := ws contents.
							(c size > 0)
								ifTrue:
									[oc add: c.
									ws resetContents].
							oc add: redirectToken]
						ifFalse:
							[(c == $<)
								ifTrue:
									[c := ws contents.
									(c size > 0)
										ifTrue:
											[oc add: c.
											ws resetContents].
									oc add: #inputRedirect]
								ifFalse: [ws nextPut: c]]]].
	tok := ws contents.
	(tok size > 0) ifTrue: [oc add: tok].
	^ oc
! !

!ShellSyntax methodsFor: 'command string parsing' stamp: 'dtl 5/2/2020 17:50'!
truncatedOutputFile: fileName
	"Attempt to do reasonable things to open a file of size zero. Better would be
	to implement a file truncation primitive."

	"ShellSyntax new truncatedOutputFile: '/tmp/delete.me'"
	"ShellSyntax new truncatedOutputFile: '/dev/null'"

	^ CommandShell useFileMan
		ifTrue: [ [ :entry | entry exists
			ifTrue: [entry delete; writeStream]
			ifFalse: [entry perform: #appendStream] ] value: ('/tmp/delete.me' perform: #asFileEntry)]
		ifFalse: [ [ FileStream concreteStream forceNewFileNamed: fileName]
			on: Error
			do: [:ex | FileStream fileNamed: fileName]].
! !

!ShellSyntax methodsFor: 'private' stamp: 'dtl 8/7/2002 13:09'!
canAccessOSProcess
	"True if OSProcess is in the image and if the OSProcess plugin is functioning properly"

	"ShellSyntax new canAccessOSProcess"

	| osp |
	^ (osp := Smalltalk at: #OSProcess ifAbsent: []) notNil and: [osp accessor canAccessSystem]
! !

!ShellSyntax methodsFor: 'globbing' stamp: 'dtl 3/10/2001 18:07'!
character: aCharacter matches: aToken
	"Test if aCharacter is included in the characters of aToken, or if aToken is a #matchAny"

	(aToken == #matchAny) ifTrue: [^ true].
	^ aToken includes: aCharacter! !

!ShellSyntax methodsFor: 'globbing' stamp: 'dtl 1/25/2013 19:23'!
containsExpansionTokens: aString
	"Answer true if aString contains wildcard expansion characters, or if it contains
	anything that might be construed as a regular expression for globbing, or if it
	contains path separator characters. If false, the sender may safely skip normal
	glob expansion on aString."

	^ aString includesAnyOf: {$? . $* . $[ . CommandShell pathNameDelimiter}
! !

!ShellSyntax methodsFor: 'globbing' stamp: 'dtl 10/13/2008 20:02'!
glob: aString
	"Apply Unix shell globbing rules to aString, and answer an array of matching
	file names."

	"ShellSyntax new glob: 'ReadMe.txt'"
	"ShellSyntax new glob: 'rEADmE.TXT'"
	"ShellSyntax new glob: 'R*dM?.txt'"

	^ self glob: aString inDirectory: self workingDirectory
! !

!ShellSyntax methodsFor: 'globbing' stamp: 'dtl 1/26/2013 14:03'!
glob: aString inDirectory: directoryPath
	"Apply Unix shell globbing rules to aString, and answer an array of matching
	file names."

	"ShellSyntax new glob: 'ReadMe.txt' inDirectory: FileDirectory default pathName"
	"ShellSyntax new glob: 'SqueakDebug.log' inDirectory: FileDirectory default pathName"
	"ShellSyntax new glob: '?queak*.[0-9].log' inDirectory: FileDirectory default pathName"
	"ShellSyntax new glob: '*image*' inDirectory: FileDirectory default pathName"
	"ShellSyntax new glob: 'noSuchFileName' inDirectory: FileDirectory default pathName"
	"ShellSyntax new glob: 'b?n' inDirectory: '/usr'"

	[^ self glob: aString names: (CommandShell directoryEntryNames: directoryPath)]
		on: Error
		do: [:ex | ^ #()]

! !

!ShellSyntax methodsFor: 'globbing' stamp: 'dtl 3/11/2001 17:37'!
glob: aString names: fileNameArray
	"Apply Unix shell globbing rules to aString with respect to the elements of fileNameArray,
	and answer an array of matching file names. The fileNameArray is expected to have been
	provided by a FileDirectory query."

	| tokens |
	tokens := self globTokensFrom: aString.
	^ fileNameArray
		select: [:n |
			self tokenStream: (ReadStream on: tokens)
				matches: (ReadStream on: n)]

! !

!ShellSyntax methodsFor: 'globbing' stamp: 'dtl 2/24/2013 10:25'!
globRangeFrom: aString tokenStream: aTokenStream
	"Answer a string containing the characters specified by a range expression
	such as [a-z]. Sorry, this is just a simple implementation which assumes ASCII."

	| r w c t |
	(aString includes: $-) ifFalse: [^ aString]. "Simple case"
	r := ReadStream on: aString.
	w := WriteStream on: String new.
	(r peek == $!!) ifTrue:
		[r next.
		aTokenStream nextPut: #not].
	[r atEnd] whileFalse: [
		c := r next.
		(r peek == $-)
			ifTrue: [r next.
					t := r next.
					(c asciiValue to: t asciiValue) do:
						[:e | w nextPut: (Character value: e)]]
			ifFalse: [w nextPut: c]].
	^ w contents! !

!ShellSyntax methodsFor: 'globbing' stamp: 'dtl 12/17/2001 11:41'!
globTokensFrom: aString
	"Answer a collection of tokens to be used for glob matching."

	"ShellSyntax new globTokensFrom: 'abc?def\ghi\?jkl*mno\*pqr[hello]there[Xa-eY]Z[!!A-Z]end'"

	| lastToken r w t |
	lastToken := nil.
	r := ReadStream on: aString.
	w := WriteStream on: #().
	[r atEnd] whileFalse:
		[t := self nextGlobToken: r lastToken: lastToken tokenStream: w.
		(t ~~ #escape) ifTrue: [w nextPut: t].
		lastToken := t].
	^ w contents
! !

!ShellSyntax methodsFor: 'globbing' stamp: 'dtl 12/15/2001 09:55'!
nextGlobToken: aStream lastToken: aToken tokenStream: aTokenStream
	"Escape character processing probably belongs elsewhere. Since it can conflict
	with Win32 file name conventions, I have commented it out here. The code
	is otherwise left alone here in case I change my mind later. -dtl"

	| c |
	(aToken == #escape)
		ifTrue:
			[^ aStream next]
		ifFalse:
			[c := aStream next.
			(c == $[)
				ifTrue:
					["character range"
					^ self globRangeFrom: (aStream upTo: $]) tokenStream: aTokenStream]
				ifFalse:
					[(c == $*) ifTrue: [^ #matchRun].
					(c == $?) ifTrue: [^ #matchAny].
					"(c == $\) ifTrue: [^ #escape].	Escape processing disabled here"
					^ c asString]]! !

!ShellSyntax methodsFor: 'globbing' stamp: 'dtl 1/5/2002 09:52'!
tokenStream: aTokenStream matches: aCharacterStream 
	"Iterate over both streams. If each character in aCharacterStream 
	matches its corresponding token in tokenStream, answer true."

	"ShellSyntax new tokenStream: (ReadStream on: (ShellSyntax new globTokensFrom: 'a?c')) matches: (ReadStream on: 'abc')"
	"ShellSyntax new tokenStream: (ReadStream on: (ShellSyntax new globTokensFrom: 'ab*cde')) matches: (ReadStream on: 'abcde')"
	"ShellSyntax new tokenStream: (ReadStream on: (ShellSyntax new globTokensFrom: 'ab*cde')) matches: (ReadStream on: 'abXXXcde')"
	"ShellSyntax new tokenStream: (ReadStream on: (ShellSyntax new globTokensFrom: 'ab*cdX')) matches: (ReadStream on: 'abXXXcde')"
	"ShellSyntax new tokenStream: (ReadStream on: (ShellSyntax new globTokensFrom: 'abc*')) matches: (ReadStream on: 'abcde')"
	"ShellSyntax new tokenStream: (ReadStream on: (ShellSyntax new globTokensFrom: 'abc*')) matches: (ReadStream on: 'abc')"
	"ShellSyntax new tokenStream: (ReadStream on: (ShellSyntax new globTokensFrom: 'a?cde*jkl')) matches: (ReadStream on: 'abcdefghijkl')"
	"ShellSyntax new tokenStream: (ReadStream on: (ShellSyntax new globTokensFrom: 'abc[A-C]xyz')) matches: (ReadStream on: 'abcBxyz')"
	"ShellSyntax new tokenStream: (ReadStream on: (ShellSyntax new globTokensFrom: 'abc[!!A-C]xyz')) matches: (ReadStream on: 'abcZxyz')"

	| c tok |
	[aCharacterStream atEnd]
		whileFalse: [aTokenStream atEnd
				ifTrue: [^ false].
			c := aCharacterStream peek.
			tok := aTokenStream next.
			tok == #not
				ifTrue: ["A negated character range follows"
					tok := aTokenStream next.
					(self character: c matches: tok)
						ifTrue: [^ false].
					aCharacterStream next]
				ifFalse: ["The normal case"
					tok == #matchRun
						ifTrue:
							["Skip characters until we resync the streams, or answer false"
							[self tokenStream: aTokenStream copy matches: aCharacterStream copy]
								whileFalse:
									[aCharacterStream atEnd ifTrue: [^ false].
									aCharacterStream next]]
						ifFalse: [(self character: c matches: tok)
								ifFalse: [^ false].
							aCharacterStream next]]].
	^ aTokenStream atEnd
		or: [aTokenStream next == #matchRun
				and: [aTokenStream atEnd]]
! !

!ShellSyntax methodsFor: 'defaults' stamp: 'dtl 9/8/2001 10:15'!
commentChar

	^ $#! !

!ShellSyntax methodsFor: 'defaults' stamp: 'dtl 4/28/2002 16:09'!
escapeChar
	"The character to use to escape the normal interpretation of the following character
	in a string."

	^ $\! !

!ShellSyntax methodsFor: 'defaults' stamp: 'dtl 1/20/2007 14:11'!
noWaitToken
	"This character at the end of a command string means execute as detached process."

	^ '&'! !

!ShellSyntax methodsFor: 'defaults' stamp: 'dtl 9/8/2001 10:16'!
pipeCharToken
	"The command pipeline character"

	^ '|'! !

!ShellSyntax methodsFor: 'defaults' stamp: 'dtl 4/27/2002 18:57'!
quoteChar
	"In a Unix shell, this character is used to delimit chunks of text which should not
	be expanded with wildcards or shell variables. In a Smalltalk compiler, this character
	delimits a String. ShellSyntax interprets it as a delimiter for a  literal string which
	should not be expanded or interpreted in any way."

	^ $'! !

!ShellSyntax methodsFor: 'accessing' stamp: 'dtl 12/16/2001 20:04'!
cwdDictionary
	"Current working directory paths indexed by device or file system name"

	^ cwdDictionary ifNil: [cwdDictionary := Dictionary new]
! !

!ShellSyntax methodsFor: 'accessing' stamp: 'dtl 1/25/2013 19:08'!
cwdIndex
	"Key to current cwd path name in cwdDictionary"

	^ cwdIndex ifNil: [cwdIndex := self cwdIndexFor: CommandShell defaultPathString]
! !

!ShellSyntax methodsFor: 'working directory' stamp: 'dtl 12/16/2001 20:06'!
cwdIndex: aSymbol
	"Key to current cwd path name in cwdDictionary"

	cwdIndex := aSymbol
! !

!ShellSyntax methodsFor: 'working directory' stamp: 'dtl 12/17/2001 09:56'!
cwdIndexFor: aPathStringWithPrefix
	"Answer key to use for aPathStringWithPrefix"

	| prefix |
	prefix := (self splitLocationPrefixFromPath: aPathStringWithPrefix) first.
	^ prefix isEmpty
		ifTrue: [#default]
		ifFalse: [prefix]! !

!ShellSyntax methodsFor: 'working directory' stamp: 'dtl 1/3/2002 19:15'!
defaultPathFor: aPathStringWithPrefix
	"Answer a reasonable path string to use as a default"

	^ self pathRoot: aPathStringWithPrefix
! !

!ShellSyntax methodsFor: 'working directory' stamp: 'dtl 12/17/2001 09:52'!
getCwdForPath: aPathString

	| prefix |
	prefix := (self splitLocationPrefixFromPath: aPathString) first.
	^ prefix isEmpty
		ifTrue: [self workingDirectory]
		ifFalse: [self cwdDictionary at: prefix ifAbsentPut: [self defaultPathFor: aPathString]]
! !

!ShellSyntax methodsFor: 'working directory' stamp: 'dtl 4/20/2003 11:50'!
nullDirectoryString
	"String to display when the current directory is one level above the file system root."

	^ '[]'! !

!ShellSyntax methodsFor: 'working directory' stamp: 'dtl 12/16/2001 21:26'!
setCwdIndexFrom: aPathString
	"Set the current working directory index to a string (Win32 device name) or to #default."

	| prefix |
	prefix := (self splitLocationPrefixFromPath: aPathString) first.
	prefix isEmpty
		ifTrue: [self cwdIndex: #default]
		ifFalse: [self cwdIndex: prefix]
! !

!ShellSyntax methodsFor: 'working directory' stamp: 'dtl 8/7/2002 13:32'!
workingDirectory

	^ self cwdDictionary at: self cwdIndex ifAbsentPut:
		[Smalltalk at: #OSProcess ifPresent: [:osp | osp thisOSProcess getCwd]]
! !

!ShellSyntax methodsFor: 'working directory' stamp: 'dtl 12/16/2001 21:32'!
workingDirectory: aPathString

	self setCwdIndexFrom: aPathString.
	self cwdDictionary at: self cwdIndex put: aPathString! !

!ShellSyntax methodsFor: 'platform dependent' stamp: 'dtl 1/25/2013 19:12'!
isAbsolutePath: aPathString
	"Answer true if aPathString is specified relative to the root of the file system."

	"ShellSyntax new isAbsolutePath: 'not/absolute/path'"
	"ShellSyntax new isAbsolutePath: '/absolute/path'"
	"ShellSyntax new isAbsolutePath: '/'"
	"ShellSyntax new isAbsolutePath: 'C:\'"
	"ShellSyntax new isAbsolutePath: '\'"
	"ShellSyntax new isAbsolutePath: 'C:'"
	"ShellSyntax new isAbsolutePath: 'C:WINDOWS'"
	"ShellSyntax new isAbsolutePath: 'C:\WINDOWS'"

	| prefixAndPath path |
	^ ((((CommandShell pathSeparator, '*') match: aPathString)
		or:	[prefixAndPath := self splitLocationPrefixFromPath: aPathString.
			(CommandShell pathSeparator, '*') match: (path := prefixAndPath last)])
				or: [prefixAndPath first isEmpty not and: [path isEmpty]]) "One above the root of a Win32 file system tree"
! !

!ShellSyntax methodsFor: 'platform dependent' stamp: 'dtl 1/25/2013 19:12'!
isAtFileSystemRoot: aPathString
	"Answer true if aPathString is not a subdirectory."

	"ShellSyntax new isAtFileSystemRoot: 'D:\'"
	"ShellSyntax new isAtFileSystemRoot: 'D:'"
	"ShellSyntax new isAtFileSystemRoot: 'D:\Windows'"
	"ShellSyntax new isAtFileSystemRoot: '\'"

	^ (CommandShell pathSeparator = (self splitLocationPrefixFromPath: aPathString) last) or: [aPathString isEmpty]
! !

!ShellSyntax methodsFor: 'platform dependent' stamp: 'dtl 4/25/2020 22:17'!
isDirectoryPath: aPathString

	| fullPath localName entry |
	^ (('*', CommandShell pathSeparator) match: aPathString) or:
		[fullPath := CommandShell fullNameFor: aPathString.
		localName := CommandShell localNameFor: fullPath.
		[entry := CommandShell dirEntryInPath: fullPath name: localName]
					on: Error
					do: [: ex | ^false].
		entry notNil and: [entry isDirectory]]
! !

!ShellSyntax methodsFor: 'platform dependent' stamp: 'dtl 8/7/2002 13:36'!
isExecutable: aPath 
	"Answer true if aPath points to an executable file. This could be 
	enhanced to support setting UID and GID for a CommandShell session. 
	For now, just take the default for the current Squeak process."

	^ aPath notNil
		and: [(Smalltalk
				at: #OSProcess
				ifPresent: [:osp | osp accessor isExecutable: aPath])
				ifNil: [false]]! !

!ShellSyntax methodsFor: 'platform dependent' stamp: 'dtl 9/4/2013 08:35'!
isPharo3AndLater
	"True if this image is a pharo of major version 3 or greater"

	Smalltalk
		at: #SystemVersion
		ifPresent: [:cls | ((cls canUnderstand: #type) and: [ cls canUnderstand: #major ])
			ifTrue: [^ cls current type = 'Pharo' and: [ cls current major >= 3 ]]].
	^false
! !

!ShellSyntax methodsFor: 'platform dependent' stamp: 'dtl 2/18/2016 21:16'!
isPharo5Update50558AndLater
	"True if this image is a pharo of major version 5 at upldate 50558 or greater"
	
	"ShellSyntax isPharo5Update50558AndLater"

	Smalltalk
		at: #SystemVersion
		ifPresent: [:cls | ((cls canUnderstand: #type) and: [ cls canUnderstand: #major ])
			ifTrue: [ ^ (cls current type = 'Pharo' and: [ cls current major >= 5 ])
						and: [ cls current  highestUpdate >= 50558]]].
	^false
! !

!ShellSyntax methodsFor: 'platform dependent' stamp: 'dtl 1/25/2013 19:13'!
pathAboveRoot
	"Answer a path pointing to a location above the file system root. The
	pathStringAboveRoot string refers to this location."

	 "ShellSyntax new pathAboveRoot"

	^ (self platformName = 'Win32')
		ifTrue: ['']
		ifFalse: [CommandShell pathSeparator].
! !

!ShellSyntax methodsFor: 'platform dependent' stamp: 'dtl 1/25/2013 19:09'!
pathEntriesInDirectoryPath: basePath
	"Answer a possibly empty collection of path entries from a colon-delimited path
	string provided by the operating system. Relative path names are interpreted relative
	to basePath"

	"ShellSyntax new pathEntriesInDirectoryPath: CommandShell defaultPathString"

	^ (Smalltalk at: #OSProcess ifPresent:
		[:osp |
		(osp thisOSProcess path findTokens: ':')
			collect:
				[:e | self newPathFor: e fromDefault: basePath]])
		ifNil: [Array new].
! !

!ShellSyntax methodsFor: 'platform dependent' stamp: 'dtl 1/25/2013 19:13'!
pathRoot: aPathString
	"For aPathString pointing to a file in a file system, answer the root of the
	file system. This method works fine for Unix and Windows, but may require
	conditional code for other platforms."

	| prefix |
	prefix := (self splitLocationPrefixFromPath: aPathString) first.
	^ prefix, CommandShell pathSeparator
! !

!ShellSyntax methodsFor: 'platform dependent' stamp: 'dtl 9/4/2013 08:34'!
platformName 
	"After Squeak version 3.6, #platformName was moved to SmalltalkImage Some
	versions of Pharo move this to OSPlatform and issue deprecation warnings
	about the other usages."

	"self new platformName"

	self isPharo3AndLater
		ifTrue: [ ^ (Smalltalk perform: #os) name ].
	^ (((Smalltalk hasClassNamed: #OSPlatform)
			and: [(Smalltalk at: #OSPlatform)
					respondsTo: #platformName])
		ifTrue: [Smalltalk at: #OSPlatform]
		ifFalse: [((Smalltalk classNamed: 'SmalltalkImage')
				ifNil: [^ Smalltalk osVersion]) current]) platformName! !

!ShellSyntax methodsFor: 'platform dependent' stamp: 'dtl 4/29/2020 19:40'!
readOnlyFileNamed: path

	CommandShell useFileMan
		ifTrue: [ ^ (path perform: #asFileEntry) readStream ]
		ifFalse: [ ^ StandardFileStream readOnlyFileNamed: path].
! !

!ShellSyntax methodsFor: 'platform dependent' stamp: 'dtl 10/30/2007 18:59'!
splitLocationPrefixFromPath: aPathString
	"Split any leading prefix from a path string, such as the C: device name
	for Win32. Answer an Array with prefix and path."

	 "ShellSyntax new splitLocationPrefixFromPath: 'C:\u'"
	 "ShellSyntax new splitLocationPrefixFromPath: 'C:\'"
	 "ShellSyntax new splitLocationPrefixFromPath: 'C:'"
	 "ShellSyntax new splitLocationPrefixFromPath: 'C:u'"
	 "ShellSyntax new splitLocationPrefixFromPath: 'c:u'"
	 "ShellSyntax new splitLocationPrefixFromPath: '\u'"

	| prefix path |
	(self platformName = 'Win32')
		ifTrue:
			[((aPathString at: 2 ifAbsent: []) == $:)
				ifTrue:
					[prefix := (String new: 2).
					prefix at: 1 put: (aPathString at: 1) asUppercase.
					prefix at: 2 put: $:.
					path := aPathString copyAfter: $:]
				ifFalse:
					[prefix := ''.
					path := aPathString]]
		ifFalse:
			[prefix := ''.
			path := aPathString].
	^ Array with: prefix with: path
! !

!ShellSyntax methodsFor: 'platform dependent' stamp: 'dtl 1/25/2013 19:23'!
upOneDirectoryLevel: aPathName
	"Answer a path name for a directory one level up the directory tree"

	 "ShellSyntax new upOneDirectoryLevel: 'C:\Windows\temp'"
	 "ShellSyntax new upOneDirectoryLevel: 'C:\Windows'"
	 "ShellSyntax new upOneDirectoryLevel: 'C:\'"
	 "ShellSyntax new upOneDirectoryLevel: ''"
	 "ShellSyntax new upOneDirectoryLevel: '/usr/bin'"
	 "ShellSyntax new upOneDirectoryLevel: '/usr'"
	 "ShellSyntax new upOneDirectoryLevel: '/'"
	 "ShellSyntax new upOneDirectoryLevel: 'usr'"
	 "ShellSyntax new upOneDirectoryLevel: ''"

	| prefixAndPath prefix path newPath |
	prefixAndPath := self splitLocationPrefixFromPath: aPathName.
	prefix := prefixAndPath at: 1.
	path := prefixAndPath at: 2.
	(self isAtFileSystemRoot: aPathName)
		ifTrue:
			[(self isAbsolutePath: aPathName)
				ifTrue:
					[prefix isEmpty
						ifTrue: "Normal case, unix. Do not go up a level."
							[^ aPathName]
						ifFalse: "A Win32 device name, go up a level above the file systems"
							[^ '']]
				ifFalse:
					["One level above whererever we are. Unfortunately we have
					no way to know where we are, so this probably should be treated
					as a sytax error."
					^ '..']]
		ifFalse:
			[newPath := (path includes: CommandShell pathNameDelimiter)
				ifTrue: [path copyUpToLast: CommandShell pathNameDelimiter]
				ifFalse: [''].
			^ newPath isEmpty
				ifTrue:
					[(self isAbsolutePath: aPathName)
						ifTrue: [prefix, CommandShell pathSeparator]
						ifFalse: [prefix]]
				ifFalse:
					[prefix, newPath]]
! !

!ShellBuiltin methodsFor: 'private' stamp: 'dtl 8/7/2002 12:56'!
canAccessOSProcess
	"True if OSProcess is in the image and if the OSProcess plugin is functioning properly"

	"self canAccessOSProcess"

	| osp |
	^ (osp := Smalltalk at: #OSProcess ifAbsent: []) notNil and: [osp accessor canAccessSystem]
! !

!ShellBuiltin methodsFor: 'private' stamp: 'dtl 4/29/2020 20:48'!
copyUntilDoneFrom: aPipe to: aStream
	"Copy the contents of aPipe to aStream, where aPipe is the output of a process
	proxy. Whenever new data is available, aPipe will trigger #dataReady. This
	method responds to the #dataReady events until the end of the pipe is reached.
	It is possible for the #atEnd check to give a false negative, so a timeout alarm
	is used to prevent deadlock conditions."

	| sema s |
	sema := Semaphore new.
	aPipe when: #dataReady send: #signal to: sema.
	[aPipe atEndOfFile] whileFalse:
		[self timeoutAfter: 200 notifying: sema.
		sema wait. "Wait for data available"
		[(s := aPipe next: 10000) isEmpty] whileFalse:
			[aStream nextPutAll: s; flush]].
	aPipe close.
	^ aStream
! !

!ShellBuiltin methodsFor: 'private' stamp: 'dtl 1/26/2013 15:24'!
dirEntryString: aDirectoryEntry
	"Original code lifted from Lex Spoon's FileList>>fileNameFormattedFrom:sizePad:"

	"self new dirEntryString: FileDirectory default entries first"

	| folderString nameStr dateStr sizeStr date time |
	folderString := ' [...]'.
	CommandShell useFileSystem
		ifTrue: [nameStr := aDirectoryEntry isDirectory
				ifTrue: [(aDirectoryEntry perform: #basename), folderString]
				ifFalse: [aDirectoryEntry perform: #basename].
				date := aDirectoryEntry modificationTime asDate.
				time := aDirectoryEntry modificationTime asTime.
				sizeStr := aDirectoryEntry size asStringWithCommas]
		ifFalse: [nameStr := aDirectoryEntry isDirectory
				ifTrue: [aDirectoryEntry name , folderString]
				ifFalse: [aDirectoryEntry name].
				date := Date fromSeconds: aDirectoryEntry modificationTime.
				time := Time fromSeconds: aDirectoryEntry modificationTime \\ 86400.
				sizeStr := aDirectoryEntry fileSize asStringWithCommas].
	dateStr := (date printFormat: #(3 2 1 $. 1 1 2)) , ' ' ,
					(String streamContents: [:s | time print24: true on: s]).
	^ nameStr , '    (' , dateStr , ' ' , sizeStr , ')'
! !

!ShellBuiltin methodsFor: 'private' stamp: 'dtl 12/23/2007 00:41'!
imageName 
	"After Squeak version 3.6, #imageName was moved to SmalltalkImage "

	^ ((Smalltalk classNamed: 'SmalltalkImage')
		ifNil: [^ Smalltalk imageName]) current imageName! !

!ShellBuiltin methodsFor: 'private' stamp: 'dtl 12/23/2007 12:23'!
snapshot: save andQuit: quit
	"After Squeak version 3.6, #snapshot:andQuit: was moved to SmalltalkImage "

	^ ((Smalltalk classNamed: 'SmalltalkImage')
		ifNil: [^ Smalltalk snapshot: save andQuit: quit]) current snapshot: save andQuit: quit! !

!ShellBuiltin methodsFor: 'private' stamp: 'dtl 1/25/2003 14:28'!
timeoutAfter: milliseconds notifying: sema
	"Under certain conditions it is possible to receive a false negative on
	and end of file check (for example, closing the writer end of a pipe
	from Squeak, and immediately checking for end of file on the reader
	in the same Squeak method). If looping while waiting on end of file,
	this timeout method can be used to prevent a deadlock condition."

	[(Delay forMilliseconds: milliseconds) wait.
	sema signal] fork! !

!ShellBuiltin methodsFor: 'implementations' stamp: 'dtl 1/25/2013 19:37'!
cdCommand: myProxy shell: commandShell input: stdin output: stdout error: stderr arguments: argArray
	"Set the current working directory. Answer an empty string or #invalidCommand."

	| newPath path arg pathCwd p |
	argArray size == 0
		ifTrue:
			[newPath := commandShell home]
		ifFalse:
			[argArray size == 1
				ifTrue:
					[path := argArray at: 1.
					(path = commandShell shellSyntax pathStringAboveRoot)
						ifTrue:
							[newPath := commandShell shellSyntax pathAboveRoot]
						ifFalse:
							[pathCwd := commandShell shellSyntax getCwdForPath: path.
							arg := (path = CommandShell pathSeparator)
								ifTrue: [path]
								ifFalse: [commandShell shellSyntax
												firstExpandedArgument: path
												inDirectoryPath: pathCwd].
							newPath := arg isEmpty
								ifTrue: [arg]
								ifFalse:
									[p := commandShell shellSyntax newDirPath: arg from: pathCwd.
									p ifNotNil: [CommandShell fullNameFor: p]]]]
				ifFalse:
					[myProxy fail.
					^ commandShell invalidCommandMessage]].
	newPath isNil
		ifTrue:
			["No directory found with this name"
			myProxy fail.
			stderr nextPutAll: argArray first, ': No such file or directory'; nextPut: Character lf]
		ifFalse:
			[(commandShell workingDirectory ~= newPath)
				ifTrue:
					[(newPath isEmpty or: [commandShell shellSyntax isDirectoryPath: newPath])
						ifTrue:
							[commandShell workingDirectory: newPath.
							commandShell changed: #relabel.
							commandShell environment ifNotNil:
								[commandShell environment at: #PWD put: commandShell workingDirectory]]
						ifFalse:
							["File of this name exists, but is not a directory"
							myProxy fail.
							stderr nextPutAll: newPath, ': not a directory'; nextPut: Character lf]]]
! !

!ShellBuiltin methodsFor: 'implementations' stamp: 'dtl 8/4/2002 19:38'!
clearCommand: myProxy shell: commandShell input: stdin output: stdout error: stderr arguments: argArray
	"Clear the terminal display screen. Answer a string or an invalid command message."

	argArray size == 0 ifFalse:
		[myProxy fail.
		^ commandShell invalidCommandMessage].
	commandShell startUpInNewSession.
	commandShell changed: #clearText
! !

!ShellBuiltin methodsFor: 'implementations' stamp: 'dtl 5/2/2020 17:06'!
copyToErrorCommand: myProxy shell: commandShell input: stdin output: stdout error: stderr arguments: argArray
	"Copy the contents of (argArray at: 1) or stdin onto stderr. This
	command exists only for purposes of testing stdin and pipelines
	for PipeableEvaluator proxies."

	| fs |
	(argArray isNil or: [argArray size == 0])
		ifTrue:
			[stdin ifNotNil: [self copyUntilDoneFrom: stdin to: stderr]]
		ifFalse:
			[argArray do:
				[:file |
				(CommandShell fileExists: file)
					ifTrue:
						[fs := CommandShell readOnlyFileNamed: file.
						fs ifNotNil:
							[self copyUntilDoneFrom: fs to: stderr.
							fs close]]]]
! !

!ShellBuiltin methodsFor: 'implementations' stamp: 'dtl 5/2/2020 17:07'!
copyToOutputCommand: myProxy shell: commandShell input: stdin output: stdout error: stderr arguments: argArray
	"Copy the contents of (argArray at: 1) or stdin onto stdout. This
	command exists only for purposes of testing stdin and pipelines
	for PipeableEvaluator proxies."

	| fs |
	(argArray isNil or: [argArray size == 0])
		ifTrue:
			[stdin ifNotNil: [self copyUntilDoneFrom: stdin to: stdout]]
		ifFalse:
			[argArray do:
				[:file |
				(CommandShell fileExists: file)
					ifTrue:
						[fs := CommandShell readOnlyFileNamed: file.
						fs ifNotNil:
							[self copyUntilDoneFrom: fs to: stdout.
							fs close]]]]
! !

!ShellBuiltin methodsFor: 'implementations' stamp: 'dtl 1/28/2013 21:45'!
editCommand: myProxy shell: commandShell input: stdin output: stdout error: stderr arguments: argArray
	"Open an editor on each of the named files."

	| controllers inputString expandedName |
	(argArray isNil or: [argArray size == 0])
		ifTrue:
			["When taking input from a command pipeline, the input must be
			read into inputString now. This is because, in MVC, the CrLfFileEditor
			is scheduled to be created later, and the input pipe will be closed by
			the caller of this method before the CrLfFileEditor ever has a chance
			to read it."
			| workingDir |
			inputString := stdin isNil
				ifTrue:
					['']
				ifFalse:
					[(self copyUntilDoneFrom: stdin to: (WriteStream on: String new)) contents
						replaceAll: Character lf with: Character cr].
			workingDir := CommandShell useFileSystem
					ifTrue: [commandShell workingDirectory perform: #asFileReference]
					ifFalse: [(Smalltalk at: #FileDirectory) on: commandShell workingDirectory].
			commandShell scheduleToEvaluate:
				[CrLfFileEditor
					openOn: inputString
					withLabel: (commandShell commandHistory isEmpty
									ifTrue: ['']
									ifFalse: [commandShell commandHistory last])
					inDirectory: workingDir
					defaultFileName: 'buffer.txt']]
		ifFalse:
			[controllers := argArray collect:
				[:arg |
				"Expand arguments to convert them to full pathnames as expected by CrLfFileEditor"
				expandedName := commandShell shellSyntax
									firstExpandedArgument: arg
									inDirectoryPath: commandShell shellSyntax workingDirectory.
				CrLfFileEditor fileNamed: expandedName withLabel: arg].
			CommandShell isMorphic
				ifFalse:
					[controllers
						inject: nil
						into:
							[:prev :c |
							prev ifNotNil:
								[c addDeferredUIMessage: [prev open]].
							c].
					commandShell scheduleToEvaluate: [controllers last open]]
				ifTrue:
					[controllers do: [:e |
						WorldState addDeferredUIMessage: [e openInWorld]]]]
! !

!ShellBuiltin methodsFor: 'implementations' stamp: 'dtl 8/4/2002 19:38'!
exitCommand: myProxy shell: commandShell input: stdin output: stdout error: stderr arguments: argArray
	"Exit the shell window. Answer a string or an invalid command message."

	argArray size == 0 ifFalse:
		[myProxy fail.
		^ commandShell invalidCommandMessage].
	commandShell changed: #exit
! !

!ShellBuiltin methodsFor: 'implementations' stamp: 'dtl 9/15/2012 19:00'!
fcCommand: myProxy shell: commandShell input: stdin output: stdout error: stderr arguments: argArray
	"Fix command. If argArray is emply, answer the last command in the
	history list. If there is one argument, interpret it as an integer index
	into the history list. Otherwise answer an invalid command message."

	| index cmd |
	commandShell commandHistory ifNotNil:
		[commandShell scheduleToEvaluate:
			[argArray size == 0
				ifTrue:
					[cmd := commandShell editCommand: (commandShell historyAt: 0)]
				ifFalse:
					[[index := (argArray at: 1) asNumber]
								on: Error
								do: [:ex | index := nil].
					cmd := commandShell editCommand:
							(index isNil
								ifTrue: ['']
								ifFalse: [commandShell historyAt: index])].
					commandShell notifyPrompt.
					cmd isEmpty ifFalse:
						[commandShell outputStream nextPutAll: cmd; cr; flush; processCommand: cmd echo: false]]]
! !

!ShellBuiltin methodsFor: 'implementations' stamp: 'dtl 2/24/2013 10:25'!
helpCommand: myProxy shell: commandShell input: stdin output: stdout error: stderr arguments: argArray

	| topic command cacheStream |
	argArray size == 0
		ifTrue:
			[cacheStream := WriteStream on: String new.
			(commandShell builtinCommands
				collect: [:c | c helpSelector] thenSelect: [:s | s notNil])
					asArray sort do:
						[:sel | cacheStream nextPutAll: (self perform: sel);
								nextPut: Character lf].
			cacheStream
				nextPutAll: 'simple Smalltalk expression!! evaluates a simple expression as a doIt';
				nextPut: Character lf;
				nextPutAll: '<ctl-C> to interrupt a running program';
				nextPut: Character lf;
				nextPutAll: '<ctl-D> to end input to a running program';
				nextPut: Character lf.
			stdout nextPutAll: cacheStream contents]
		ifFalse:
			[topic := argArray at: 1.
			command := commandShell builtinCommands at: topic ifAbsent: [^ self].
			command helpSelector ifNotNil:
				[stdout nextPutAll: (self perform: command helpSelector); nextPut: Character lf]]
! !

!ShellBuiltin methodsFor: 'implementations' stamp: 'dtl 12/29/2002 10:45'!
historyCommand: myProxy shell: commandShell input: stdin output: stdout error: stderr arguments: argArray
	"Display the command history list."

	| ws rs |
	ws := WriteStream on: Character lf asString.
	rs := ReadStream on: commandShell commandHistory.
	[rs atEnd]
		whileFalse: [ws nextPutAll: rs next.
			ws nextPutAll: ' '.
			ws nextPutAll: rs next.
			rs atEnd
				ifFalse: [ws nextPut: Character lf]].
	stdout nextPutAll: (ws contents, Character lf asString)
! !

!ShellBuiltin methodsFor: 'implementations' stamp: 'dtl 5/2/2020 17:07'!
inspectCommand: myProxy shell: commandShell input: stdin output: stdout error: stderr arguments: argArray
	"Open a Smalltalk inspector on the contents of stdin, or the file(s) named on the
	command line."

	| fs inputString pathName |
	(argArray isNil or: [argArray size == 0])
		ifTrue:
			[stdin ifNotNil:
				["When taking input from a command pipeline, the input must be
				read into inputString now. This is because, in MVC, the inspector
				is scheduled to be created later, and the input pipe will be closed by
				the caller of this method before the deferred block ever has a
				chance to read it."
				inputString := stdin ifNotNil:
					[(self copyUntilDoneFrom: stdin to: (WriteStream on: String new)) contents
						replaceAll: Character lf with: Character cr].
				commandShell scheduleToEvaluate: [inputString inspect]]]
		ifFalse:
			[argArray isEmpty
				ifTrue:
					[commandShell scheduleToEvaluate: [nil inspect]]
				ifFalse:
					[argArray do:
						[:e |
						pathName := commandShell shellSyntax
							firstExpandedArgument: e
							inDirectoryPath: commandShell shellSyntax workingDirectory.
						fs := (CommandShell fileExists: pathName)
							ifTrue: [CommandShell readOnlyFileNamed: pathName]
							ifFalse: [nil].
						fs isNil
							ifTrue:
								[commandShell scheduleToEvaluate: [nil inspect]]
							ifFalse:
								[commandShell scheduleToEvaluate:
									[(fs contentsOfEntireFile
									replaceAll: Character lf
									with: Character cr) inspect.
									fs close]]]]]
! !

!ShellBuiltin methodsFor: 'implementations' stamp: 'dtl 4/20/2003 11:50'!
pwdCommand: myProxy shell: commandShell input: stdin output: stdout error: stderr arguments: argArray
	"Answer the current working directory (a string) or an invalid command message."

	| directoryString |
	directoryString := commandShell workingDirectory.
	directoryString isEmpty ifTrue: [directoryString := self nullDirectoryString].
	argArray size == 0 ifFalse:
		[myProxy fail.
		^ commandShell invalidCommandMessage].
	stdout nextPutAll: directoryString; nextPut: Character lf
! !

!ShellBuiltin methodsFor: 'implementations' stamp: 'dtl 2/24/2013 10:25'!
slsCommand: myProxy shell: commandShell input: stdin output: stdout error: stderr arguments: argArray
	"Simple directory contents lister"

	| filePatterns d entries names dirs files entry linesToPrint lineCount cacheStream |

	"A small value of linesToPrint will prevent an ExternalCommandShell from
	overdriving is stdout stream. Maybe. A larger value allows faster updates to
	an interactive CommandShell display."
	linesToPrint := 16.

	(argArray isNil or: [argArray size == 0])
		ifTrue:
			["Contents of current directory."
			filePatterns := Array with: '*']
		ifFalse:
			["List named files"
			filePatterns := argArray].
	CommandShell useFileSystem
		ifTrue: [d := commandShell workingDirectory perform: #asFileReference]
		ifFalse: [d := (Smalltalk at: #FileDirectory) on: commandShell workingDirectory].
	entries := d entries.
	names := Set new.
	filePatterns do: [:pat | names addAll: (commandShell shellSyntax glob: pat inDirectory: commandShell workingDirectory)].
	dirs := OrderedCollection new.
	files := OrderedCollection new.
	names asArray sort do:
		[:n |
		entry := entries detect: [:e | (CommandShell entryName: e) = n].
		entry isDirectory
			ifTrue: [dirs add: entry]
			ifFalse: [files add: entry]].

	linesToPrint := 5.
	lineCount := 1.
	cacheStream := WriteStream on: String new.
	dirs do:	[:dir |
		lineCount := lineCount + 1.
		cacheStream nextPutAll: (self dirEntryString: dir); nextPut: Character lf.
		(lineCount > linesToPrint) ifTrue:
			[stdout nextPutAll: cacheStream contents.
			cacheStream := WriteStream on: String new.
			lineCount := 1]].
	files do: [:file |
		lineCount := lineCount + 1.
		cacheStream nextPutAll: (self dirEntryString: file); nextPut: Character lf.
		(lineCount > linesToPrint) ifTrue:
			[stdout nextPutAll: cacheStream contents.
			cacheStream := WriteStream on: String new.
			lineCount := 1]].
	stdout nextPutAll: cacheStream contents.! !

!ShellBuiltin methodsFor: 'implementations' stamp: 'dtl 12/23/2007 12:23'!
snapshotCommand: myProxy shell: commandShell input: stdin output: stdout error: stderr arguments: argArray
	"Save the image"

	| s |
	Smalltalk at: #WorldState ifPresent:
		[:ws |
		s := Semaphore new.
		commandShell safeToExit: false.
		stdout nextPutAll: self imageName; nextPut: Character lf.
		ws addDeferredUIMessage:
			[self snapshot: true andQuit: false.
			s ifNotNil: [s signal] "s is nil when resuming after snapshot"].
		s ifNotNil: [s wait]]
! !

!ShellBuiltin methodsFor: 'implementations' stamp: 'dtl 11/30/2010 07:33'!
sqshCommand: myProxy shell: commandShell input: stdin output: stdout error: stderr arguments: argArray
	"Open a new shell window."

	| ws |
	argArray size == 0
		ifTrue:
			[commandShell scheduleToEvaluate: [commandShell class open]]
		ifFalse:
			[ws := WriteStream on: String new.
			argArray inject: true into:
				[:first :each |
				first ifFalse: [ws nextPut: Character space].
				ws nextPutAll: each.
				false].
			commandShell scheduleToEvaluate: [commandShell class openLabel: ws contents]]
! !

!ShellBuiltin methodsFor: 'implementations' stamp: 'dtl 12/29/2002 10:51'!
ttyExitCommand: myProxy shell: commandShell input: stdin output: stdout error: stderr arguments: argArray
	"Exit an ExternalCommandShell by quitting Squeak. The image is not saved and the shutdown
	list is not processed."

	commandShell safeToExit
		ifTrue: [Smalltalk quitPrimitive]
		ifFalse: [stderr nextPutAll: 'cannot exit in same command line with snapshot'; nextPut: Character lf]
! !

!ShellBuiltin methodsFor: 'implementations' stamp: 'dtl 12/29/2002 10:51'!
typeCommand: myProxy shell: commandShell input: stdin output: stdout error: stderr arguments: argArray
	"Answer how each name would be interpreted if used as a command name."

	| results exe |
	argArray size == 0
		ifTrue:
			[^ '']
		ifFalse:
			[results := WriteStream on: Array new.
			argArray do:
			[:arg |
			(commandShell isBuiltInCommand: arg)
				ifTrue:
					[results nextPut: arg, ' is a shell builtin']
				ifFalse:
					[self canAccessOSProcess
					 	ifFalse:
							[self inform:
								((Smalltalk hasClassNamed: #OSProcess)
									ifTrue: [(Smalltalk at: #OSProcess) accessor class name]
									ifFalse: [commandShell class name]), ' cannot access system'.
							stdout nextPutAll: 'cannot access system'; nextPut: Character lf.
							^ self].
					exe := commandShell shellSyntax findExecutablePathFor: arg inDirectoryPath: commandShell workingDirectory.
					(commandShell shellSyntax isExecutable: exe) ifFalse: [exe := nil].
					exe isNil
						ifTrue: [results nextPut: arg, ': not found']
								ifFalse: [results nextPut: arg, ' is ', exe]]].
				results contents do: [:e | stdout nextPutAll: e; nextPut: Character lf]]
! !

!ShellBuiltin methodsFor: 'help messages' stamp: 'dtl 12/31/2001 19:58'!
cdHelp

	^ 'cd [path] - change default directory'! !

!ShellBuiltin methodsFor: 'help messages' stamp: 'dtl 12/31/2001 19:59'!
clearHelp

	^ 'clear - clear screen'
! !

!ShellBuiltin methodsFor: 'help messages' stamp: 'dtl 12/31/2001 20:00'!
editHelp

	^ 'edit [files...] - edit the contents of stdin or the named files'
! !

!ShellBuiltin methodsFor: 'help messages' stamp: 'dtl 12/31/2001 20:00'!
exitHelp

	^ 'exit - exit shell and close window'! !

!ShellBuiltin methodsFor: 'help messages' stamp: 'dtl 12/31/2001 20:01'!
fcHelp

	^ 'fc [i] - "fix command", command number i from history list, or -i, or the last command'
! !

!ShellBuiltin methodsFor: 'help messages' stamp: 'dtl 12/31/2001 20:01'!
helpHelp

	^ 'help - help on sqsh commands'
! !

!ShellBuiltin methodsFor: 'help messages' stamp: 'dtl 12/31/2001 20:02'!
historyHelp

	^ 'history - display command history list'
! !

!ShellBuiltin methodsFor: 'help messages' stamp: 'dtl 12/31/2001 20:02'!
inspectHelp

	^ 'inspect [files...] - open an inspector on the contents of stdin or the named files'
! !

!ShellBuiltin methodsFor: 'help messages' stamp: 'dtl 12/31/2001 20:02'!
pwdHelp

	^ 'pwd - print current working directory'
! !

!ShellBuiltin methodsFor: 'help messages' stamp: 'dtl 12/31/2001 20:06'!
slsHelp

	^ 'sls [filepatterns] - list current directory contents'
! !

!ShellBuiltin methodsFor: 'help messages' stamp: 'dtl 1/28/2013 21:47'!
snapshotHelp

	^ 'snapshot - snapshot and save image'! !

!ShellBuiltin methodsFor: 'help messages' stamp: 'dtl 12/31/2001 20:03'!
sqshHelp

	^ 'sqsh [title] - open new shell window'
! !

!ShellBuiltin methodsFor: 'help messages' stamp: 'dtl 7/14/2002 12:24'!
ttyExitHelp

	^ 'exit - exit shell and quit Squeak without saving image'! !

!ShellBuiltin methodsFor: 'help messages' stamp: 'dtl 12/31/2001 20:03'!
typeHelp

	^ 'type [names...] - indicate how each name would be interpreted if used as a command'
! !

!ShellBuiltin methodsFor: 'accessing' stamp: 'dtl 12/31/2001 20:08'!
helpSelector

	^ helpSelector! !

!ShellBuiltin methodsFor: 'accessing' stamp: 'dtl 12/31/2001 20:08'!
helpSelector: aSymbol

	helpSelector := aSymbol! !

!ShellBuiltin methodsFor: 'accessing' stamp: 'dtl 12/26/2001 19:54'!
name: aString

	name := aString! !

!ShellBuiltin methodsFor: 'accessing' stamp: 'dtl 12/27/2001 01:24'!
needsPrompt
	"True if the command should be followed by a prompt"

	^ needsPrompt ifNil: [needsPrompt := true]! !

!ShellBuiltin methodsFor: 'accessing' stamp: 'dtl 12/27/2001 01:22'!
needsPrompt: trueOrFalse
	"True if the command should be followed by a prompt"

	needsPrompt := trueOrFalse! !

!ShellBuiltin methodsFor: 'accessing' stamp: 'dtl 12/31/2001 20:09'!
procedureSelector

	^ procedureSelector! !

!ShellBuiltin methodsFor: 'accessing' stamp: 'dtl 12/31/2001 20:09'!
procedureSelector: aSymbol

	procedureSelector := aSymbol! !

!ShellBuiltin methodsFor: 'evaluating' stamp: 'dtl 2/1/2003 16:21'!
performWith: argumentArray evaluator: aPipeableEvaluator shell: aCommandShell input: inputStream output: outputStream error: errorStream

	self perform: self procedureSelector
		withArguments: (Array
			with: aPipeableEvaluator
			with: aCommandShell
			with: inputStream
			with: outputStream
			with: errorStream
			with: argumentArray).
	aPipeableEvaluator complete
! !

!ShellBuiltin class methodsFor: 'instance creation' stamp: 'dtl 8/4/2002 19:03'!
cd: commandShell
	"Define command to set the current working directory. Answer an empty string
	or #invalidCommand."

	^ self name: 'cd'
		help: #cdHelp
		procedure: #cdCommand:shell:input:output:error:arguments:
		needsPrompt: true
! !

!ShellBuiltin class methodsFor: 'instance creation' stamp: 'dtl 8/4/2002 19:03'!
clear: commandShell
	"Define command to clear the terminal display screen. Answer a string or an invalid
	command message."

	^ self name: 'clear'
		help: #clearHelp
		procedure: #clearCommand:shell:input:output:error:arguments:
		needsPrompt: true
! !

!ShellBuiltin class methodsFor: 'instance creation' stamp: 'dtl 8/4/2002 19:03'!
copyToError: commandShell
	"Define command to copy the contents of (argArray at: 1) or stdin onto
	stderr. This command exists only for purposes of testing stdin and pipelines
	for PipeableEvaluator proxies."

	^ self name: 'copyToError'
		help: nil
		procedure: #copyToErrorCommand:shell:input:output:error:arguments:
		needsPrompt: true
! !

!ShellBuiltin class methodsFor: 'instance creation' stamp: 'dtl 8/4/2002 19:03'!
copyToOutput: commandShell
	"Define command to  copy the contents of (argArray at: 1) or stdin onto
	stdout. This command exists only for purposes of testing stdin and pipelines
	for PipeableEvaluator proxies."

	^ self name: 'copyToOutput'
		help: nil
		procedure: #copyToOutputCommand:shell:input:output:error:arguments:
		needsPrompt: true
! !

!ShellBuiltin class methodsFor: 'instance creation' stamp: 'dtl 8/4/2002 19:03'!
edit: commandShell
	"Define command to open an editor on each of the named files."

	^ self name: 'edit'
		help: #editHelp
		procedure: #editCommand:shell:input:output:error:arguments:
		needsPrompt: true
! !

!ShellBuiltin class methodsFor: 'instance creation' stamp: 'dtl 8/4/2002 19:03'!
exit: commandShell
	"Define command to exit the shell window. Answer a string or an invalid
	command message."

	^ self name: 'exit'
		help: #exitHelp
		procedure: #exitCommand:shell:input:output:error:arguments:
		needsPrompt: true
! !

!ShellBuiltin class methodsFor: 'instance creation' stamp: 'dtl 8/4/2002 19:03'!
fc: commandShell
	"Define 'fix command' command. If argArray is emply, answer the last
	command in the history list. If there is one argument, interpret it as an
	integer index into the history list. Otherwise answer an invalid command
	message."

	^ self name: 'fc'
		help: #fcHelp
		procedure: #fcCommand:shell:input:output:error:arguments:
		needsPrompt: false
! !

!ShellBuiltin class methodsFor: 'instance creation' stamp: 'dtl 8/4/2002 19:03'!
help: commandShell
	"Define command to display help messages."

	^ self name: 'help'
		help: #helpHelp
		procedure: #helpCommand:shell:input:output:error:arguments:
		needsPrompt: true
! !

!ShellBuiltin class methodsFor: 'instance creation' stamp: 'dtl 8/4/2002 19:04'!
history: commandShell
	"Define command to display the command history list."

	^ self name: 'history'
		help: #historyHelp
		procedure: #historyCommand:shell:input:output:error:arguments:
		needsPrompt: true
! !

!ShellBuiltin class methodsFor: 'instance creation' stamp: 'dtl 8/4/2002 19:04'!
inspect: commandShell
	"Define command to open a Smalltalk inspector on the contents of stdin, or the
	file(s) named on the command line."

	^ self name: 'inspect'
		help: #inspectHelp
		procedure: #inspectCommand:shell:input:output:error:arguments:
		needsPrompt: true
! !

!ShellBuiltin class methodsFor: 'instance creation' stamp: 'dtl 8/4/2002 19:04'!
pwd: commandShell
	"Define command to answer the current working directory (a string) or an
	invalid command message."

	^ self name: 'pwd'
		help: #pwdHelp
		procedure: #pwdCommand:shell:input:output:error:arguments:
		needsPrompt: true
! !

!ShellBuiltin class methodsFor: 'instance creation' stamp: 'dtl 8/4/2002 19:04'!
sls: commandShell
	"Define command to for a simple directory contents lister"

	^ self name: 'sls'
		help: #slsHelp
		procedure: #slsCommand:shell:input:output:error:arguments:
		needsPrompt: true
! !

!ShellBuiltin class methodsFor: 'instance creation' stamp: 'dtl 8/4/2002 19:04'!
snapshot: commandShell
	"Define command to save the Squeak image."

	^ self name: 'snapshot'
		help: #snapshotHelp
		procedure: #snapshotCommand:shell:input:output:error:arguments:
		needsPrompt: true
! !

!ShellBuiltin class methodsFor: 'instance creation' stamp: 'dtl 8/4/2002 19:04'!
sqsh: commandShell
	"Define command to open a new shell window."

	^ self name: 'sqsh'
		help: #sqshHelp
		procedure: #sqshCommand:shell:input:output:error:arguments:
		needsPrompt: true
! !

!ShellBuiltin class methodsFor: 'instance creation' stamp: 'dtl 8/4/2002 19:04'!
ttyExit: commandShell
	"Define command to exit the Squeak shell and quit Squeak without saving the image."

	^ self name: 'exit'
		help: #ttyExitHelp
		procedure: #ttyExitCommand:shell:input:output:error:arguments:
		needsPrompt: true
! !

!ShellBuiltin class methodsFor: 'instance creation' stamp: 'dtl 8/4/2002 19:04'!
type: commandShell
	"Define command to answer how each name would be interpreted if used as a
	command name."

	^ self name: 'type'
		help: #typeHelp
		procedure: #typeCommand:shell:input:output:error:arguments:
		needsPrompt: true
! !

!ShellBuiltin class methodsFor: 'command dictionary creation' stamp: 'dtl 7/14/2002 12:11'!
commandDictionaryFor: aCommandShell commands: commandNameArray
	"Answer a Dictionary of ShellBuiltin instances suitable for use by a CommandShell"

	"ShellBuiltin commandDictionaryFor: CommandShell new commands: #(cd: clear: copyToError: copyToOutput: edit: exit: fc: help: history: inspect: pwd: sls: sqsh: type:)"

	^ commandNameArray
		inject: Dictionary new
		into:
			[:d :cmd | | b |
			b := self perform: cmd with: aCommandShell.
			d at: b name put: b; yourself]! !

!ShellBuiltin class methodsFor: 'private' stamp: 'dtl 1/4/2002 21:28'!
name: aString help: helpSelector procedure: procedureSelector needsPrompt: trueOrFalse
	"Command definition methods use this method to create instances representing
	shell builtin commands. The commands are installed in a CommandShell, and
	later evaluated in the context of a PipeableEvaluator."

	^ self new
		name: aString;
		helpSelector: helpSelector;
		procedureSelector: procedureSelector;
		needsPrompt: trueOrFalse
! !

!RemoteTask methodsFor: 'finalization' stamp: 'dtl 8/31/2019 17:01'!
finalize
	"If garbage collected before remote processing is complete, the AIO
	handler process should be terminated and the external process should
	be stopped. When evaluating a #do:whenComplete: a reference should
	be maintained to the RemoteTask in order to avoid this finalization."

	aioHandler ifNotNil: [aioHandler close].
	childProxy ifNotNil: [childProxy terminate]! !

!RemoteTask methodsFor: 'finalization' stamp: 'dtl 11/12/2011 23:07'!
registerForFinalization
	
	self toFinalizeSend: #finalize:
		to: self class
		with: self copy
! !

!RemoteTask methodsFor: 'serializing' stamp: 'dtl 2/16/2018 21:04'!
getResult
	"Materialize the result, reading serialized data from standard input"

	SerializingStrategy = #referenceStream
		ifTrue: [ | bytes | "Must read from a positionable stream"
				childProxy pipeFromOutput reader binary.
				bytes := childProxy upToEndOfFile.
				^(Materializer on: bytes readStream) next].

	SerializingStrategy = #fuel
		ifTrue: [^(Materializer materializeFrom: childProxy pipeFromOutput reader binary) root].

	SerializingStrategy = #magma
		ifTrue: [^Materializer objectFromStream: childProxy pipeFromOutput reader].

	self error: 'undefined strategy ', SerializingStrategy asString
! !

!RemoteTask methodsFor: 'serializing' stamp: 'dtl 2/16/2018 21:05'!
put: result
	"Serialize the result and write to standard output"

	SerializingStrategy = #referenceStream
		ifTrue: [ | ws | "Must write to a positionable stream"
				ws := ByteArray new writeStream.
				(Serializer on: ws) nextPut: result.
				^ OSProcess thisOSProcess stdOut nextPutAll: ws contents; flush].

	SerializingStrategy = #fuel
		ifTrue: [ ^ Serializer serialize: result on: OSProcess thisOSProcess stdOut binary].

	SerializingStrategy = #magma
		ifTrue: [ ^Serializer object: result toStream: OSProcess thisOSProcess stdOut].

	self error: 'undefined strategy ', SerializingStrategy asString
! !

!RemoteTask methodsFor: 'evaluating' stamp: 'dtl 2/21/2015 19:50'!
result
	"Answer the result of a previously started task. The child Squeak sends one
	result object back to its parent Squeak before exiting."

	| result |
	result := self getResult.
	childProxy pipeFromOutput close.
	^ result
! !

!RemoteTask methodsFor: 'evaluating' stamp: 'dtl 8/31/2019 16:35'!
runState
	childProxy
		ifNotNil: [ ^ childProxy runState ]
		ifNil: [ ^ #notYetRunning ]! !

!RemoteTask methodsFor: 'evaluating' stamp: 'dtl 2/17/2018 11:54'!
setCompletionBlock: aOneArgumentBlock

	aioHandler := AioEventHandler new.
	aioHandler addDependent: self.
	completionBlock := [ :arg |
		aOneArgumentBlock value: arg.
		aioHandler ifNotNil: [aioHandler close]].
! !

!RemoteTask methodsFor: 'evaluating' stamp: 'dtl 2/16/2018 21:32'!
start
	"Fork a headless child Squeak to evaluate my task."

	| childBlock result |

	self registerForFinalization.

	"Create block to be evaluated in a Squeak child process."
	childBlock := ["First set standard input to blocking. This avoids a delay to wait for
		data to be available, but note that it is dangerous to do this unless you
		are certain that you know in advance that the correct number of characters
		will be available on the input. If this is not the case, then the VM will block
		on the read and lock up the child squeak process."

		HeadlessChild
			ifTrue: [result := [self task value]
					on: Exception
					do: [:e | | strm |
						strm := '' writeStream.
						strm nextPutAll:  'remote task execution failed: '.
						e printVerboseOn: strm.
						result := strm contents]]
			ifFalse: [result := self task value].
		OSProcess thisOSProcess stdIn setBlocking.
		self put: result.
		OSProcess thisOSProcess stdOut flush; close].
	"Fork a child Squeak that will evaluate the childBlock then exit"
	childProxy := PipeableOSProcess
					forkSqueakAndDoThenQuit: childBlock
					errorPipelineStream: InternalPipe nonBlockingPipe
					headless: HeadlessChild
					bufferedOutput: false
					outputNotifier: aioHandler
! !

!RemoteTask methodsFor: 'evaluating' stamp: 'dtl 2/21/2015 17:17'!
task: taskBlock whenComplete: aOneArgumentBlock
	"Evaluate taskBlock in an image running in a separate OS process.
	Set the completion block, a block that takes result object as its single argument.
	Start remote processing with an AIO event notifier. Completion of the remote task
	will result in a changed notification from the event notifier, which will activate the
	completion block. The completion block is expected to do something useful with
	the result of the remote task."

	"n.b. Inspect the RemoteTask to prevent it being garbage collected and finalized
	before processing is complete"

	"(RemoteTask new task: [2 + 2] whenComplete: [ :result | result inspect]) inspect"
	"(RemoteTask new task: [(Delay forSeconds: 3) wait. 2 + 2] whenComplete: [ :result | result inspect]) inspect"

	^ self task: taskBlock whenComplete: aOneArgumentBlock taskIdentifier: nil
! !

!RemoteTask methodsFor: 'evaluating' stamp: 'dtl 3/10/2015 19:34'!
task: taskBlock whenComplete: aOneArgumentBlock taskIdentifier: anObject
	"Evaluate taskBlock in an image running in a separate OS process.
	Set the completion block, a block that takes result object as its single argument.
	Start remote processing with an AIO event notifier. Completion of the remote task
	will result in a changed notification from the event notifier, which will activate the
	completion block. The completion block is expected to do something useful with
	the result of the remote task. Provide a task identifier to uniquely identify the
	remote task."

	task := taskBlock.
	taskIdentifier := anObject.
	self setCompletionBlock: aOneArgumentBlock.
	self start
! !

!RemoteTask methodsFor: 'evaluating' stamp: 'dtl 2/19/2018 18:25'!
terminate
	"Convenience method for terminating the child image process if it
	is otherwise unresponsive"

	self runState = #running
		ifTrue: [ childProxy processProxy terminate ]
! !

!RemoteTask methodsFor: 'evaluating' stamp: 'dtl 2/21/2015 20:48'!
value
	"Start a remote task and read the result object. The child Squeak sends one
	result object back to its parent Squeak before exiting."

	"(RemoteTask new task: [2 + 2]) value"

	| result |
	self start.
	result := self result.
	childProxy closePipes.
	^ result
! !

!RemoteTask methodsFor: 'accessing' stamp: 'dtl 2/16/2018 22:33'!
task
	^ task! !

!RemoteTask methodsFor: 'accessing' stamp: 'dtl 2/16/2018 22:33'!
task: valuableObject
	"A block or other object responding to #value"

	task := valuableObject! !

!RemoteTask methodsFor: 'accessing' stamp: 'dtl 2/21/2015 17:13'!
taskIdentifier
	^ taskIdentifier! !

!RemoteTask methodsFor: 'updating' stamp: 'dtl 11/11/2011 10:47'!
update: anObject
	"An event handler has indicated availability of data on the pipe from
	the remote process. Begin reading data until the entire result object
	is received. The remote process will exit when complete, but possibly
	not until data has been read from the pipe, as it may block on write
	until the pipe has been serviced."

	(anObject isKindOf: AioEventHandler)
		ifTrue: [[completionBlock
						ifNotNil: [completionBlock value: self result]]
					ensure: [anObject close]]! !

!RemoteTask class methodsFor: 'evaluating' stamp: 'dtl 2/19/2018 17:42'!
do: aBlock
	"Start a remote task and read the result object. The image will be blocked
	on read until completion of the remote task."

	"RemoteTask do: [2 + 2]"
	"RemoteTask do: [(Delay forSeconds: 3) wait. 2 + 2]"

	^(self task: aBlock) value! !

!RemoteTask class methodsFor: 'evaluating' stamp: 'dtl 2/19/2018 18:53'!
do: taskBlock whenComplete: aOneArgumentBlock
	"Evaluate taskBlock in an image running in a separate OS process.
	Set the completion block, a block that takes result object as its single argument.
	Start remote processing with an AIO event notifier. Completion of the remote task
	will result in a changed notification from the event notifier, which will activate the
	completion block. The completion block is expected to do something useful with
	the result of the remote task."

	"RemoteTask
		do: [ | oc |
			oc := OrderedCollection new.
			(1 to: 5000000) do: [ :e | e isPrime ifTrue: [oc add: e]].
			oc ]
		whenComplete: [ :result | result inspect ]"

	^ self new task: taskBlock whenComplete: aOneArgumentBlock! !

!RemoteTask class methodsFor: 'evaluating' stamp: 'dtl 2/19/2018 18:50'!
do: taskBlock whenComplete: aOneArgumentBlock taskIdentifier: anObject
	"Evaluate taskBlock in an image running in a separate OS process.
	Set the completion block, a block that takes result object as its single argument.
	Start remote processing with an AIO event notifier. Completion of the remote task
	will result in a changed notification from the event notifier, which will activate the
	completion block. The completion block is expected to do something useful with
	the result of the remote task."

	"RemoteTask
		do: [ | oc |
			oc := OrderedCollection new.
			(1 to: 5000000) do: [ :e | e isPrime ifTrue: [oc add: e]].
			oc ]
		whenComplete: [ :result | result inspect ]
		taskIdentifier: 'A forked Squeak image finding primes'"

	^ self new task: taskBlock whenComplete: aOneArgumentBlock taskIdentifier: anObject! !

!RemoteTask class methodsFor: 'finalization' stamp: 'dtl 11/12/2011 23:05'!
finalize: aRemoteTask

	aRemoteTask finalize! !

!RemoteTask class methodsFor: 'class initialization' stamp: 'dtl 2/19/2015 22:33'!
headlessChild: boolean
	"If true (default), the child process is headless. Set to false to allow debugging in
	the child Squeak image"

	"RemoteTask headlessChild:true"
	"RemoteTask headlessChild:false" "for debugging the child image"

	HeadlessChild := boolean! !

!RemoteTask class methodsFor: 'class initialization' stamp: 'dtl 2/19/2015 22:32'!
initialize
	"Initilialize the serialization strategy. Assume that if Magma is loaded in this image,
	that the Magma serializer is preferred. If Fuel is present, use that. Otherwise use the
	simple and effective default of a Squeak ReferenceStream."

	"RemoteTask initialize"

	"RemoteTask useReferenceStreamSerializer"
	"RemoteTask useFuelSerializer"
	"RemoteTask useMagmaSerializer"

	self headlessChild: true.

	(Smalltalk hasClassNamed: #MaObjectSerializer)
		ifTrue: [^self useMagmaSerializer].

	(Smalltalk hasClassNamed: #FLSerializer)
		ifTrue: [^ self useFuelSerializer].

	self useReferenceStreamSerializer.
! !

!RemoteTask class methodsFor: 'class initialization' stamp: 'dtl 2/16/2015 19:01'!
useFuelSerializer
	"RemoteTask useFuelSerializer"

	Serializer := (Smalltalk at: #FLSerializer ifAbsent: [self error: 'Fuel not installed']) newDefault.
	Materializer := (Smalltalk at: #FLMaterializer) newDefault..
	^SerializingStrategy := #fuel! !

!RemoteTask class methodsFor: 'class initialization' stamp: 'dtl 2/16/2015 19:00'!
useMagmaSerializer
	"RemoteTask useMagmaSerializer"

	Serializer := (Smalltalk at: #MaObjectSerializer ifAbsent: [self error: 'Magma serializer not installed']) new.
	Materializer := Serializer.
	^SerializingStrategy := #magma! !

!RemoteTask class methodsFor: 'class initialization' stamp: 'dtl 2/16/2015 19:01'!
useReferenceStreamSerializer
	"RemoteTask useReferenceStreamSerializer"

	Serializer := (Smalltalk at: #ReferenceStream).
	Materializer := Serializer.
	^SerializingStrategy := #referenceStream! !

!RemoteTask class methodsFor: 'examples' stamp: 'dtl 11/13/2011 00:29'!
parallelPerformance
	"Compare performance of three tasks run in parallel versus the equivalent serial
	processing. Results will vary depending on availability of CPU cores. On a quad core
	machine, the parallel processing should complete in well under half the time of the
	equivalent serial job."

	"RemoteTask parallelPerformance"

	| parallelExecutionTime results sema task1 task2 task3 serialExecutionTime p1 p2 p3 |
	parallelExecutionTime := Time millisecondsToRun: [
		results := Array new: 3.
		sema := Semaphore new.
		task1 := [(100000000000000000000000000000 to: 100000000000000000000000019999)
					select: [:f | f isPrime] thenCollect: [:s | s asString]].
		task2 := [(100000000000000000000000020000 to: 100000000000000000000000039999)
					select: [:f | f isPrime] thenCollect: [:s | s asString]].
		task3 := [(100000000000000000000000040000 to: 100000000000000000000000059999)
					select: [:f | f isPrime] thenCollect: [:s | s asString]].
		"n.b. assign to variables to prevent RemoteTask from being finalized"
		p1 := RemoteTask do: task1 whenComplete: [:result |  results at: 1 put: result. sema signal].
		p2 := RemoteTask do: task2 whenComplete: [:result | results at: 2 put: result. sema signal].
		p3 := RemoteTask do: task3 whenComplete: [:result |  results at: 3 put: result. sema signal].
		sema wait; wait; wait.
		results].

	serialExecutionTime :=  Time millisecondsToRun: [
		(100000000000000000000000000000 to: 100000000000000000000000019999)
					select: [:f | f isPrime] thenCollect: [:s | s asString].
		(100000000000000000000000020000 to: 100000000000000000000000039999)
					select: [:f | f isPrime] thenCollect: [:s | s asString].
		(100000000000000000000000040000 to: 100000000000000000000000059999)
					select: [:f | f isPrime] thenCollect: [:s | s asString]].

	^ { #parallelExecutionTime -> parallelExecutionTime . #serialExecutionTime -> serialExecutionTime }
! !

!RemoteTask class methodsFor: 'examples' stamp: 'dtl 2/17/2018 15:11'!
searchForPrimes
	"RemoteTask searchForPrimes"

	| poolCount range tasks results start sema proc |
	start := 100000000000000000000000000000.
	range := 20000.
	poolCount := 7.
	tasks := OrderedCollection new.
	results := OrderedCollection new. "FIXME make thread safe"

	sema := Semaphore new.
	poolCount timesRepeat: [ sema signal ]. "limit task count"
	proc := [ [ | end task osp |
		end := start + range - 1.
		task := [ (start to: end) select: [ :f | f isPrime]].
		osp := RemoteTask do: task
			whenComplete: [ :result | results add: result. sema signal ].
		tasks add: osp. "Do not allow the task to be GCed"
		start := start + range.
		sema wait.
	] repeat ] fork.
	^ { proc . tasks . results }.! !

!RemoteTask class methodsFor: 'examples' stamp: 'dtl 11/13/2011 00:32'!
threeParallelTasks
	"Find all primes in a range of large integers. Divide the problem into
	three tasks running the three child images, and return the results to
	the supervisory image. Answer a tasks array and a results array, where
	the results array will be populated on completion of the tasks."

	"RemoteTask threeParallelTasks"

	| p1 p2 p3 results task1 task2 task3 |
	results := Array new: 3.
	task1 := [(100000000000000000000000000000
					to: 100000000000000000000000019999)
				select: [:f | f isPrime] thenCollect: [:s | s asString]].
	task2 := [(100000000000000000000000020000
					to: 100000000000000000000000039999)
				select: [:f | f isPrime] thenCollect: [:s | s asString]].
	task3 := [(100000000000000000000000040000
					to: 100000000000000000000000059999)
				select: [:f | f isPrime] thenCollect: [:s | s asString]].
	"n.b. Assign task to a variable to prevent RemoteTask from being finalized"
	p1 := RemoteTask do: task1 whenComplete: [:result | results at: 1 put: result].
	p2 := RemoteTask do: task2 whenComplete: [:result | results at: 2 put: result].
	p3 := RemoteTask do: task3 whenComplete: [:result | results at: 3 put: result].
	^ { #tasks -> { p1 . p2 . p3 } . #results -> results }! !

!RemoteTask class methodsFor: 'instance creation' stamp: 'dtl 3/10/2015 19:24'!
task: valuableObject
	"Create an instance to evaluate a block or other valuable. Do not start evaluation."

	^ self new task: valuableObject
! !

!ExternalCommandShell methodsFor: 'accessing' stamp: 'dtl 2/18/2007 11:59'!
cliShell
	"Answer the value of cliShell"

	^ cliShell! !

!ExternalCommandShell methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:24'!
cliShell: anObject
	"Set the value of cliShell"

	cliShell := anObject! !

!ExternalCommandShell methodsFor: 'accessing' stamp: 'dtl 7/12/2002 19:15'!
inputStream

	^ inputStream! !

!ExternalCommandShell methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:24'!
inputStream: externalStream

	inputStream := externalStream! !

!ExternalCommandShell methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:24'!
isRunning
	"True if my evaluation loop should be running. This instance variable supports
	restarting the evaluation loop after an image restart."

	^ isRunning ifNil: [isRunning := false]
! !

!ExternalCommandShell methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:24'!
isRunning: trueOrFalse
	"True if my evaluation loop should be running. This instance variable supports
	restarting the evaluation loop after an image restart."

	isRunning := trueOrFalse
! !

!ExternalCommandShell methodsFor: 'accessing' stamp: 'dtl 2/24/2013 10:23'!
lineBuffer
	"Answer the value of lineBuffer"

	^ lineBuffer ifNil: [lineBuffer := WriteStream on: String new]! !

!ExternalCommandShell methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:24'!
lineBuffer: anObject
	"Set the value of lineBuffer"

	lineBuffer := anObject! !

!ExternalCommandShell methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:25'!
sigIntHandler
	"The interrupt handler process, for catching <ctl>C from the keyboard."

	^ sigIntHandler ifNil: [sigIntHandler := self sigIntHandlerProcess]! !

!ExternalCommandShell methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:25'!
sigIntHandler: aProcess
	"The interrupt handler process, for catching <ctl>C from the keyboard."

	sigIntHandler := aProcess! !

!ExternalCommandShell methodsFor: 'accessing' stamp: 'dtl 8/4/2002 12:48'!
sigIntSema
	"A Smalltalk Semaphore which will be signalled when an external SIGINT signal is
	received from the operating system."

	^ sigIntSema! !

!ExternalCommandShell methodsFor: 'accessing' stamp: 'dtl 11/8/2007 20:25'!
sigIntSema: aSemaphore
	"A Smalltalk Semaphore which will be signalled when an external SIGINT signal is
	received from the operating system."

	sigIntSema := aSemaphore
! !

!ExternalCommandShell methodsFor: 'interrupt handling' stamp: 'dtl 2/18/2007 15:57'!
confirm: queryString
	"Put up a yes/no menu with caption queryString. Answer true if the 
	response is yes, false if no."

	self flag: #FIXME. "bypass the dialog and assume true"

	self cliShell backgroundMessageQueue addLast: queryString, ' (yes)', Character lf asString.
	^ true
! !

!ExternalCommandShell methodsFor: 'interrupt handling' stamp: 'dtl 2/18/2007 15:49'!
doInterruptCharHandler
	"Interrupt character detected, do interrupt stuff."

	self confirmBeforeKilling: (self cliShell foregroundProxies
		select: [:e | e isExternalProcess]
		thenCollect: [:r | r processProxy]).
	self confirmBeforeKilling: (self cliShell backgroundProxies
		select: [:e | e isExternalProcess]
		thenCollect: [:r | r processProxy]).
! !

!ExternalCommandShell methodsFor: 'interrupt handling' stamp: 'dtl 12/15/2002 15:43'!
sigIntHandlerProcess
	"The interrupt handler process, for catching <ctl>C from the keyboard."

	^ [[self sigIntSema isNil
		ifTrue:
			[(Delay forMilliseconds: 1000) wait]
		ifFalse:
			[self sigIntSema wait.
			self doInterruptCharHandler]] repeat] fork

! !

!ExternalCommandShell methodsFor: 'interrupt handling' stamp: 'dtl 11/8/2007 20:26'!
startHandlingInterruptSignal
	"Whenever a SIGINT is received, forward it to my sigIntSema."

	| sema |
	sigIntHandler ifNotNil: [sigIntHandler terminate. self sigIntHandler: nil].
	Smalltalk at: #OSProcess
		ifPresent:
			[:osp |
			osp accessor handlesOsSignals ifTrue:
				[sema := osp accessor forwardSignal: osp accessor primSigIntNumber.
				sema ifNotNil: [self sigIntSema: sema].
				self sigIntHandler]]
! !

!ExternalCommandShell methodsFor: 'interrupt handling' stamp: 'dtl 8/8/2002 15:19'!
stopHandlingInterruptSignal
	"Revert to prior SIGINT handling behavior in the VM."

	Smalltalk at: #OSProcess
		ifPresent:
			[:osp |
			osp accessor handlesOsSignals
				ifTrue:
					[osp accessor restoreSignal: osp accessor primSigIntNumber].
			self sigIntSema: nil.
			self sigIntHandler terminate.
			self sigIntHandler: nil]
! !

!ExternalCommandShell methodsFor: 'input character filtering' stamp: 'dtl 11/8/2007 20:26'!
confirmBeforeKilling: externalProxies
	"Interrupt character detected, do interrupt stuff."

	| msgStrm |
	(externalProxies size > 0)
		ifTrue:
			[msgStrm := WriteStream on: String new.
			(externalProxies size > 1)
				ifTrue: [msgStrm nextPutAll: 'kill processes']
				ifFalse: [msgStrm nextPutAll: 'kill process'].
			externalProxies do: [:e | msgStrm nextPutAll: ' ', e pid printString, ' (', e programName, ')'].
			msgStrm nextPut: $?.
			(self confirm: msgStrm contents)
				ifTrue:
					[externalProxies reverseDo: [:e | e terminate]]]
! !

!ExternalCommandShell methodsFor: 'updating' stamp: 'dtl 2/26/2017 01:09'!
cr

	self cliShell outputStream lf; flush.! !

!ExternalCommandShell methodsFor: 'updating' stamp: 'dtl 3/3/2017 21:49'!
inputFrom: aStream

	| strm s |
	strm := '' writeStream.
	[ (s := aStream upToEnd) isEmpty not ] whileTrue: [ strm nextPutAll: s ].
	^ strm contents.! !

!ExternalCommandShell methodsFor: 'updating' stamp: 'dtl 2/26/2017 01:09'!
show: something

	self cliShell outputStream nextPutAll: something asString.! !

!ExternalCommandShell methodsFor: 'updating' stamp: 'dtl 4/8/2018 12:15'!
update: event

	event == self inputStream
		ifTrue: [^ self handleInput: (self inputFrom: event)].
	event == #prompt	"display $PS1"
		ifTrue: [^ self prompt].
	event == #alternatePrompt	"display $PS2"
		ifTrue: [^ self promptTwo].
	event == #restorePrompt	"restore last prompt display"
		ifTrue: [self flag: #FIXME. ^ self prompt].
	event == #newLine
		ifTrue: [^ self newLine].
	event == #exit
		ifTrue: [^ self close].
	event == #clearText
		ifTrue: [^ self error: 'FIXME'].
	event == #interruptCharacter
		ifTrue: [^ self doInterruptCharHandler].
	"Treat anything other than the symbols above as a string to be displayed on
	the command line in the view"
	self show: event asString; cr.
! !

!ExternalCommandShell methodsFor: 'defaults' stamp: 'dtl 12/30/2002 10:45'!
defaultBuiltinCommands
	"The commands which make sense in a headless tty environment"

	^ #(cd: copyToError: copyToOutput: snapshot: ttyExit: help: history: pwd: sls: type:)
! !

!ExternalCommandShell methodsFor: 'input processing' stamp: 'dtl 3/20/2007 06:15'!
disableInputProcessing

	self inputStream removeDependent: self; disableEventHandling! !

!ExternalCommandShell methodsFor: 'input processing' stamp: 'dtl 3/20/2007 06:14'!
enableInputProcessing

	self inputStream addDependent: self; enableEventHandling! !

!ExternalCommandShell methodsFor: 'input processing' stamp: 'dtl 4/8/2018 20:28'!
handleInput: str 

	| rs line |
	(str size > 1 and: [ (str last: 2) first = $\ ])
		ifTrue: [ "escaped end of line, more to follow"
			self lineBuffer
				nextPutAll: (str allButLast: 2);
				nextPut: Character space.
			self cliShell notifyNewline "no-op, for consistency with CommandShellTranscript"]
		ifFalse: [
			self lineBuffer nextPutAll: str.
			[self lineBuffer contents includes: Character lf]
				whileTrue: [rs := ReadStream on: lineBuffer contents.
					self lineBuffer: nil.
					line := rs upTo: Character lf.
					self cliShell command: line echo: false.
					self lineBuffer nextPutAll: rs upToEnd]]! !

!ExternalCommandShell methodsFor: 'command history' stamp: 'dtl 1/20/2007 14:02'!
editCommand: aString

	self flag: #FIXME. "should interact with tty"
	^ super editCommand: aString! !

!ExternalCommandShell methodsFor: 'initialize-release' stamp: 'dtl 3/12/2007 18:44'!
initialize

	super initialize.
	self cliShell: (CommandShell new
			installCommands: self defaultBuiltinCommands;
			promptString: 'sqsh> ';
			addDependent: self;
			yourself).
	self setStdioStreams

! !

!ExternalCommandShell methodsFor: 'initialize-release' stamp: 'dtl 2/18/2007 11:22'!
setNonblockingInput

	Smalltalk at: #OSProcess ifPresent:
		[:osp | osp thisOSProcess stdIn setNonBlocking]
! !

!ExternalCommandShell methodsFor: 'initialize-release' stamp: 'dtl 3/12/2007 22:33'!
setStdioStreams

	Smalltalk
		at: #OSProcess
		ifPresent: [:osp | 
			self inputStream: osp thisOSProcess stdIn
				asBufferedAsyncFileReadStream disableEventHandling.
			self cliShell outputStream: osp thisOSProcess stdOut.
			self cliShell errorStream: osp thisOSProcess stdErr]! !

!ExternalCommandShell methodsFor: 'initialize-release' stamp: 'dtl 3/12/2007 18:54'!
shutdownInOldSession
	"The VM is about to shut down."

	self disableInputProcessing.
	self stopHandlingInterruptSignal
! !

!ExternalCommandShell methodsFor: 'initialize-release' stamp: 'dtl 3/13/2007 06:23'!
start

	self isRunning ifTrue: [self stop].
	self setNonblockingInput.
	self isRunning: true.
	self startHandlingInterruptSignal.
	self cliShell addDependent: self.
	self cliShell outputStream cr; nextPut: Character lf.
	self cliShell notifyPrompt.
	self enableInputProcessing
! !

!ExternalCommandShell methodsFor: 'initialize-release' stamp: 'dtl 3/12/2007 22:31'!
startUpInNewSession
	"Image has been restarted, so the references to standard input, output
	and error are no longer valid. Reinitialize to make things right."

	self setNonblockingInput.
	self setStdioStreams.
	self isRunning
		ifTrue: [self stop; start]! !

!ExternalCommandShell methodsFor: 'initialize-release' stamp: 'dtl 9/3/2010 17:08'!
stop

	self disableInputProcessing.
	self stopHandlingInterruptSignal.
	cliShell ifNotNil: [cliShell removeDependent: self].
	self isRunning: false! !

!ExternalCommandShell methodsFor: 'command prompt' stamp: 'dtl 4/8/2018 20:35'!
newLine
	"User has entered a carriage return, and the model is noitfying us to display
	new line without a prompt string. Nothing to do here because imput came from
	a real terminal, an the newline is already visible to the user."
! !

!ExternalCommandShell methodsFor: 'command prompt' stamp: 'dtl 3/4/2017 15:13'!
prompt

	self cliShell outputStream nextPutAll: self cliShell promptString; flush.
! !

!ExternalCommandShell methodsFor: 'command prompt' stamp: 'dtl 1/20/2007 11:46'!
promptString
	"Dependents call this when restoring the prompt string display"

	self flag: #FIXME. "change the dependents to call #lastPromptString"
	^ self lastPromptString! !

!ExternalCommandShell methodsFor: 'command prompt' stamp: 'dtl 2/26/2017 00:49'!
promptTwo

	self cliShell outputStream nextPutAll: self cliShell promptStringTwo; flush
! !

!ExternalCommandShell methodsFor: 'command prompt' stamp: 'dtl 1/20/2007 11:40'!
restorePrompt

	self flag: #FIXME. "remember last prompt string and redisplay it"
	self prompt! !

!ExternalCommandShell class methodsFor: 'instance creation' stamp: 'dtl 2/18/2007 14:09'!
default

	^ ExternalShell! !

!ExternalCommandShell class methodsFor: 'instance creation' stamp: 'dtl 7/12/2002 08:01'!
new

	self notify: self name, ': Only one instance of ExternalCommandShell or any of its subclasses should exist in the image. Use #inSmalltalk to obtain the singleton instance.'.
	self shouldNotImplement! !

!ExternalCommandShell class methodsFor: 'instance creation' stamp: 'dtl 11/8/2007 20:21'!
onTty
	"Answer a singleton instance. When called the first time, the shell is created
	and its evaluation loop is started. Subsequent calls answer the singleton
	instance, which may or may not be running. Use the #stop and #start messages
	to control the shell once it has been created."

	"ExternalCommandShell onTty"

	^ ExternalShell ifNil: [ExternalShell := self basicNew initialize].! !

!ExternalCommandShell class methodsFor: 'class initialization' stamp: 'dtl 2/19/2016 19:00'!
initialize
	"If OSProcess is in this  image, it important that #startup be send to
	ThisOSProcess before it is sent to ExternalCommandShell. Therefore ensure
	that ExternalCommandShell appears after ThisOSProcess in the system
	startup list."

	"ExternalCommandShell initialize"

	ExternalShell
		ifNotNil: [ ExternalShell stop.
			ExternalShell := nil ].
	ShellSyntax new isPharo5Update50558AndLater
		ifFalse:
			[ Smalltalk addToStartUpList: self ]
		ifTrue:
			[ (Smalltalk at: #SessionManager) default perform: #registerToolClassNamed: with: self name ]
! !

!ExternalCommandShell class methodsFor: 'class initialization' stamp: 'dtl 8/4/2002 16:17'!
open

	self start! !

!ExternalCommandShell class methodsFor: 'start-stop' stamp: 'dtl 8/7/2002 19:29'!
start

	"ExternalCommandShell start"
	"ExternalCommandShell stop"

	^ self onTty start! !

!ExternalCommandShell class methodsFor: 'start-stop' stamp: 'dtl 8/7/2002 19:29'!
stop

	"ExternalCommandShell stop"
	"ExternalCommandShell start"

	^ self onTty stop! !

!TtyTextMorphForEditView methodsFor: 'editing' stamp: 'dtl 11/2/2007 05:18'!
keyStroke: evt

	(self editView model filterAndForwardEvent: evt)
		ifNotNil: [^ super keyStroke: evt]
! !

!ShellWindowView methodsFor: 'initialization' stamp: 'dtl 5/30/2001 21:53'!
defaultControllerClass 

	^ TtyPluggableTextController
! !

!ShellWindowView methodsFor: 'initialization' stamp: 'dtl 5/30/2001 22:07'!
initialize

	super initialize.
	self controller acceptOnCr: true! !

!ShellWindowView methodsFor: 'initialization' stamp: 'dtl 1/22/2007 07:40'!
on: anObject text: getTextSel accept: setTextSel readSelection: getSelectionSel menu: getMenuSel

	super on: anObject text: getTextSel accept: setTextSel readSelection: getSelectionSel menu: getMenuSel.
	self model prompt
! !

!ShellWindowView methodsFor: 'testing' stamp: 'dtl 6/2/2001 19:15'!
isCollapsed
	"Gross hack for starting up a new window. I don't understand why I did this. Aack!! Pfft!!"

	^ true! !

!ShellWindowView methodsFor: 'updating' stamp: 'dtl 11/30/2010 07:33'!
update: something

	(something == #doCommand)
		ifTrue:
			[^ controller accept].
	(something == #clear)
		ifTrue:
			[^ self changeText: Text new].
	(something == #exit)
		ifTrue:
			[self topView controller
				addDeferredUIMessage:
					[controller controlTerminate.
					self topView controller closeAndUnschedule.
					ScheduledControllers restore]].
	^ super update: something
! !

!TtyPluggableTextController methodsFor: 'menu messages' stamp: 'dtl 9/15/2012 18:58'!
accept
	"Evaluate command in a separate process. The separate process will
	send #addDeferredUIMessage: to generate a new prompt when complete."

	self model
		activeController: self;
		cr;
		flush;
		processCommand: self commandLineInput asString echo: false! !

!TtyPluggableTextController methodsFor: 'accessing' stamp: 'dtl 5/30/2001 22:02'!
acceptOnCr
	"If true, notify my view to accept whenever a <cr> is input"

	acceptOnCr ifNil: [acceptOnCr := false].
	^ acceptOnCr! !

!TtyPluggableTextController methodsFor: 'accessing' stamp: 'dtl 5/30/2001 22:00'!
acceptOnCr: trueOrFalse
	"If true, notify my view to accept whenever a <cr> is input"

	acceptOnCr := trueOrFalse! !

!TtyPluggableTextController methodsFor: 'accessing' stamp: 'dtl 6/13/2001 22:07'!
callbackQueue
	"A queue of blocks to be evaluated. Asynchronously executing processes
	can place a block in this queue, and the block will later be evaluated
	in my control loop."

	^ callbackQueue ifNil: [callbackQueue := SharedQueue new]! !

!TtyPluggableTextController methodsFor: 'accessing' stamp: 'dtl 6/24/2001 20:42'!
closed
	"True after user enters an 'exit' command"

	closed ifNil: [closed := false].
	^ closed
! !

!TtyPluggableTextController methodsFor: 'accessing' stamp: 'dtl 6/24/2001 20:42'!
closed: trueOrFalse
	"True after user enters an 'exit' command"

	closed := trueOrFalse
! !

!TtyPluggableTextController methodsFor: 'callbacks' stamp: 'dtl 7/1/2001 18:48'!
addDeferredUIMessage: aBlock
	"Enqueue aBlock for later execution in my control loop."

	self callbackQueue nextPut: aBlock! !

!TtyPluggableTextController methodsFor: 'command input' stamp: 'dtl 6/9/2001 19:05'!
commandLineInput

	^ (self text copyFrom: self positionAfterPromptString to: self text size) asString.
! !

!TtyPluggableTextController methodsFor: 'command input' stamp: 'dtl 6/9/2001 19:06'!
positionAfterPromptString
	"Answer the index of the first character after the last prompt string in my text. If
	not found, then assume that the contents of the text are all intended to be command
	input."

	(1 to: (self text size - model promptString size))
		reverseDo: [:i |
			((self text findString: model promptString startingAt: i) ~= 0)
				ifTrue: [^ i + model promptString size]].
	^ 0
! !

!TtyPluggableTextController methodsFor: 'control defaults' stamp: 'dtl 6/18/2001 20:54'!
controlActivity

	[self callbackQueue isEmpty]
		whileFalse:
			[callbackQueue next value].
	^ super controlActivity! !

!TtyPluggableTextController methodsFor: 'typing support' stamp: 'dtl 6/23/2001 18:53'!
dispatchOnCharacter: char with: typeAheadStream
	"Carry out the action associated with this character, if any.
	Type-ahead is passed so some routines can flush or use it."

	char ifNil: [^ char].
	(((char == Character cr) and: [self acceptOnCr]) and: [model keyboardConnector isNil])
		ifTrue:
			[sensor keyboard.  "consume enter key".
			self accept.
			ScheduledControllers searchForActiveController].
	(model filterAndForward: char) isNil
		ifTrue:
			[sensor keyboard.  "consume enter key".
			^ true]
		ifFalse:
			[^ super dispatchOnCharacter: char with: typeAheadStream]
! !
CommandShell initialize!
CrLfFileEditor initialize!
CommandShellTestCase initialize!
RemoteTask initialize!
ExternalCommandShell initialize!
