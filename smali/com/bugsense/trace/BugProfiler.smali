.class Lcom/bugsense/trace/BugProfiler;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_LIFETIME:I = 0x3c

.field private static currentStep:I

.field private static currentTag:Ljava/lang/String;

.field private static instance:Lcom/bugsense/trace/BugProfiler;

.field private static running:Z

.field private static runningFor:I


# instance fields
.field final rt:Ljava/lang/Runtime;

.field private final trackCpu:Ljava/lang/StringBuilder;

.field private final trackMem:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/bugsense/trace/BugProfiler;->instance:Lcom/bugsense/trace/BugProfiler;

    const-string v0, ""

    sput-object v0, Lcom/bugsense/trace/BugProfiler;->currentTag:Ljava/lang/String;

    const/4 v0, 0x2

    sput v0, Lcom/bugsense/trace/BugProfiler;->currentStep:I

    sput v1, Lcom/bugsense/trace/BugProfiler;->runningFor:I

    sput-boolean v1, Lcom/bugsense/trace/BugProfiler;->running:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/bugsense/trace/BugProfiler;->trackCpu:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/bugsense/trace/BugProfiler;->trackMem:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iput-object v0, p0, Lcom/bugsense/trace/BugProfiler;->rt:Ljava/lang/Runtime;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/bugsense/trace/BugProfiler;->running:Z

    return v0
.end method

.method static synthetic access$100(Lcom/bugsense/trace/BugProfiler;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/bugsense/trace/BugProfiler;->getCPU()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/bugsense/trace/BugProfiler;)Ljava/lang/StringBuilder;
    .locals 1

    iget-object v0, p0, Lcom/bugsense/trace/BugProfiler;->trackCpu:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bugsense/trace/BugProfiler;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/bugsense/trace/BugProfiler;->getMem()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/bugsense/trace/BugProfiler;)Ljava/lang/StringBuilder;
    .locals 1

    iget-object v0, p0, Lcom/bugsense/trace/BugProfiler;->trackMem:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Lcom/bugsense/trace/BugProfiler;->currentStep:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    sget v0, Lcom/bugsense/trace/BugProfiler;->runningFor:I

    return v0
.end method

.method static synthetic access$612(I)I
    .locals 1

    sget v0, Lcom/bugsense/trace/BugProfiler;->runningFor:I

    add-int/2addr v0, p0

    sput v0, Lcom/bugsense/trace/BugProfiler;->runningFor:I

    return v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bugsense/trace/BugProfiler;->currentTag:Ljava/lang/String;

    return-object v0
.end method

.method private getCPU()Ljava/lang/String;
    .locals 8

    const/4 v6, 0x0

    const-string v0, "unknown"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "top -d 1 -n 1"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    aget-object v0, v4, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "executeTop"

    const-string v3, "error in closing and destroying top process"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v6

    move-object v3, v0

    move-object v0, v1

    move-object v1, v6

    :goto_2
    :try_start_4
    const-string v4, "executeTop"

    const-string v5, "error in getting first line of top"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v0, v3

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "executeTop"

    const-string v2, "error in closing and destroying top process"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :goto_4
    throw v0

    :catch_3
    move-exception v1

    const-string v2, "executeTop"

    const-string v3, "error in closing and destroying top process"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v3

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    :catch_5
    move-exception v1

    move-object v7, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_2
.end method

.method private getMem()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bugsense/trace/BugProfiler;->rt:Ljava/lang/Runtime;

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4130

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProfiler()Lcom/bugsense/trace/BugProfiler;
    .locals 1

    sget-object v0, Lcom/bugsense/trace/BugProfiler;->instance:Lcom/bugsense/trace/BugProfiler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bugsense/trace/BugProfiler;

    invoke-direct {v0}, Lcom/bugsense/trace/BugProfiler;-><init>()V

    sput-object v0, Lcom/bugsense/trace/BugProfiler;->instance:Lcom/bugsense/trace/BugProfiler;

    :cond_0
    sget-object v0, Lcom/bugsense/trace/BugProfiler;->instance:Lcom/bugsense/trace/BugProfiler;

    return-object v0
.end method

.method private startThread()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bugsense/trace/BugProfiler;->running:Z

    const/4 v0, 0x0

    sput v0, Lcom/bugsense/trace/BugProfiler;->runningFor:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bugsense/trace/BugProfiler$1;

    invoke-direct {v1, p0}, Lcom/bugsense/trace/BugProfiler$1;-><init>(Lcom/bugsense/trace/BugProfiler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public startProfiling(Ljava/lang/String;I)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/bugsense/trace/BugProfiler;->currentTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/bugsense/trace/BugProfiler;->running:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profiler with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already running!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sput-object p1, Lcom/bugsense/trace/BugProfiler;->currentTag:Ljava/lang/String;

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profiling tag set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p2, :cond_1

    const/16 v0, 0x3c

    if-le p2, v0, :cond_4

    :cond_1
    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v1, "Profiling step must be greater than 0s and lower than 60s. "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    :goto_1
    sput v0, Lcom/bugsense/trace/BugProfiler;->currentStep:I

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profiling step set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/bugsense/trace/BugProfiler;->currentStep:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/bugsense/trace/BugProfiler;->trackCpu:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bugsense/trace/BugProfiler;->trackCpu:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    iget-object v0, p0, Lcom/bugsense/trace/BugProfiler;->trackMem:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bugsense/trace/BugProfiler;->trackMem:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_3
    invoke-direct {p0}, Lcom/bugsense/trace/BugProfiler;->startThread()V

    goto :goto_0

    :cond_4
    move v0, p2

    goto :goto_1
.end method

.method public stopProfiling(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/bugsense/trace/BugProfiler;->running:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bugsense/trace/BugProfiler;->currentTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping profiler with tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bugsense/trace/BugProfiler;->running:Z

    :cond_0
    const-string v0, "CPU"

    iget-object v1, p0, Lcom/bugsense/trace/BugProfiler;->trackCpu:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MEM"

    iget-object v1, p0, Lcom/bugsense/trace/BugProfiler;->trackMem:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
