.class public Lcom/taobao/accs/eudemon/EudemonManager;
.super Ljava/lang/Object;
.source "EudemonManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final ACT_START:I = 0x0

.field public static final ACT_STOP:I = -0x1

.field public static final AGOO_PID:Ljava/lang/String; = "agoo.pid"

.field public static AMPARAMS:Ljava/lang/String; = null

.field private static final BUF_SIZE:I = 0x64

.field private static final DAEMON_STAT_FILE:Ljava/lang/String; = "eudemon"

.field public static final EX_FILE_NAME:Ljava/lang/String; = "DaemonServer"

.field private static final PID:Ljava/lang/String; = "daemonserver.pid"

.field private static final PKG_INSTALL_DIR:Ljava/lang/String; = "/data/data/"

.field public static final PROCESS_NAME:Ljava/lang/String; = "runServer"

.field private static final TAG:Ljava/lang/String;

.field private static final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static soManager:Lcom/taobao/accs/eudemon/EudemonManager;

.field private static timeoutAlarmDay:I

.field private static timeoutAlarmNight:I


# instance fields
.field private abi:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private checkPackagePath:Ljava/lang/String;

.field public debugMode:Z

.field private handerThread:Landroid/os/HandlerThread;

.field private hanlder:Landroid/os/Handler;

.field private isTransparentProxy:Z

.field private mContext:Landroid/content/Context;

.field private reportKey:Ljava/lang/String;

.field private reportLoc:Ljava/lang/String;

.field private sdkVersion:I

.field private serverIp:Ljava/lang/String;

.field private serverPort:I

.field private timeout:I

.field private ua:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/taobao/accs/eudemon/EudemonManager;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "startservice -n {packname}/com.taobao.accs.ChannelService"

    sput-object v0, Lcom/taobao/accs/eudemon/EudemonManager;->AMPARAMS:Ljava/lang/String;

    .line 78
    const/16 v0, 0x1c20

    sput v0, Lcom/taobao/accs/eudemon/EudemonManager;->timeoutAlarmNight:I

    .line 80
    const/16 v0, 0x9c4

    sput v0, Lcom/taobao/accs/eudemon/EudemonManager;->timeoutAlarmDay:I

    .line 82
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/taobao/accs/eudemon/EudemonManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/accs/eudemon/EudemonManager;->soManager:Lcom/taobao/accs/eudemon/EudemonManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 6
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "timeout"    # I
    .param p3, "isDebug"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v3, 0x50

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v2, p0, Lcom/taobao/accs/eudemon/EudemonManager;->mContext:Landroid/content/Context;

    .line 76
    const/16 v1, 0x708

    iput v1, p0, Lcom/taobao/accs/eudemon/EudemonManager;->timeout:I

    .line 86
    iput-boolean v4, p0, Lcom/taobao/accs/eudemon/EudemonManager;->debugMode:Z

    .line 89
    const-string/jumbo v1, "100001"

    iput-object v1, p0, Lcom/taobao/accs/eudemon/EudemonManager;->reportKey:Ljava/lang/String;

    .line 90
    const-string/jumbo v1, "tb_accs_eudemon_1.1.3"

    iput-object v1, p0, Lcom/taobao/accs/eudemon/EudemonManager;->ua:Ljava/lang/String;

    .line 91
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/taobao/accs/eudemon/EudemonManager;->checkPackagePath:Ljava/lang/String;

    .line 92
    const-string/jumbo v1, "21646297"

    iput-object v1, p0, Lcom/taobao/accs/eudemon/EudemonManager;->appKey:Ljava/lang/String;

    .line 93
    iput v4, p0, Lcom/taobao/accs/eudemon/EudemonManager;->sdkVersion:I

    .line 94
    const-string/jumbo v1, "100.69.165.28"

    iput-object v1, p0, Lcom/taobao/accs/eudemon/EudemonManager;->serverIp:Ljava/lang/String;

    .line 95
    const-string/jumbo v1, "http://100.69.165.28/agoo/report"

    iput-object v1, p0, Lcom/taobao/accs/eudemon/EudemonManager;->reportLoc:Ljava/lang/String;

    .line 96
    iput v3, p0, Lcom/taobao/accs/eudemon/EudemonManager;->serverPort:I

    .line 101
    iput-boolean v5, p0, Lcom/taobao/accs/eudemon/EudemonManager;->isTransparentProxy:Z

    .line 103
    iput-object v2, p0, Lcom/taobao/accs/eudemon/EudemonManager;->hanlder:Landroid/os/Handler;

    .line 104
    iput-object v2, p0, Lcom/taobao/accs/eudemon/EudemonManager;->handerThread:Landroid/os/HandlerThread;

    .line 112
    invoke-direct {p0}, Lcom/taobao/accs/eudemon/EudemonManager;->initHandler()V

    .line 113
    const-string/jumbo v1, "startservice -n {packname}/com.taobao.accs.ChannelService"

    sput-object v1, Lcom/taobao/accs/eudemon/EudemonManager;->AMPARAMS:Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lcom/taobao/accs/eudemon/EudemonManager;->mContext:Landroid/content/Context;

    .line 115
    iput p2, p0, Lcom/taobao/accs/eudemon/EudemonManager;->timeout:I

    .line 116
    iput-boolean p3, p0, Lcom/taobao/accs/eudemon/EudemonManager;->debugMode:Z

    .line 117
    new-instance v1, Landroid/os/Build;

    invoke-direct {v1}, Landroid/os/Build;-><init>()V

    const-string/jumbo v2, "CPU_ABI"

    invoke-static {v1, v2}, Lcom/taobao/accs/eudemon/EudemonManager;->getFieldReflectively(Landroid/os/Build;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/accs/eudemon/EudemonManager;->abi:Ljava/lang/String;

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/accs/eudemon/EudemonManager;->checkPackagePath:Ljava/lang/String;

    .line 120
    const/16 v1, 0xdd

    iput v1, p0, Lcom/taobao/accs/eudemon/EudemonManager;->sdkVersion:I

    .line 121
    iget-object v1, p0, Lcom/taobao/accs/eudemon/EudemonManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/UtilityImpl;->getAppkey(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "appkeys":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, ""

    :goto_0
    iput-object v1, p0, Lcom/taobao/accs/eudemon/EudemonManager;->appKey:Ljava/lang/String;

    .line 123
    invoke-static {p1}, Lcom/taobao/accs/utl/Utils;->getMode(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_2

    .line 124
    const-string/jumbo v1, "agoodm.m.taobao.com"

    iput-object v1, p0, Lcom/taobao/accs/eudemon/EudemonManager;->serverIp:Ljava/lang/String;

    .line 125
    iput v3, p0, Lcom/taobao/accs/eudemon/EudemonManager;->serverPort:I

    .line 126
    const-string/jumbo v1, "http://agoodm.m.taobao.com/agoo/report"

    iput-object v1, p0, Lcom/taobao/accs/eudemon/EudemonManager;->reportLoc:Ljava/lang/String;

    .line 127
    const-string/jumbo v1, "1009527"

    iput-object v1, p0, Lcom/taobao/accs/eudemon/EudemonManager;->reportKey:Ljava/lang/String;

    .line 140
    :goto_1
    return-void

    .line 122
    :cond_1
    aget-object v1, v0, v4

    goto :goto_0

    .line 128
    :cond_2
    invoke-static {p1}, Lcom/taobao/accs/utl/Utils;->getMode(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 129
    const-string/jumbo v1, "110.75.98.154"

    iput-object v1, p0, Lcom/taobao/accs/eudemon/EudemonManager;->serverIp:Ljava/lang/String;

    .line 130
    iput v3, p0, Lcom/taobao/accs/eudemon/EudemonManager;->serverPort:I

    .line 131
    const-string/jumbo v1, "http://agoodm.wapa.taobao.com/agoo/report"

    iput-object v1, p0, Lcom/taobao/accs/eudemon/EudemonManager;->reportLoc:Ljava/lang/String;

    .line 132
    const-string/jumbo v1, "1009527"

    iput-object v1, p0, Lcom/taobao/accs/eudemon/EudemonManager;->reportKey:Ljava/lang/String;

    goto :goto_1

    .line 134
    :cond_3
    const-string/jumbo v1, "100.69.168.33"

    iput-object v1, p0, Lcom/taobao/accs/eudemon/EudemonManager;->serverIp:Ljava/lang/String;

    .line 135
    iput v3, p0, Lcom/taobao/accs/eudemon/EudemonManager;->serverPort:I

    .line 136
    const-string/jumbo v1, "http://100.69.168.33/agoo/report"

    iput-object v1, p0, Lcom/taobao/accs/eudemon/EudemonManager;->reportLoc:Ljava/lang/String;

    .line 137
    const/16 v1, 0x3c

    iput v1, p0, Lcom/taobao/accs/eudemon/EudemonManager;->timeout:I

    .line 138
    const-string/jumbo v1, "9527"

    iput-object v1, p0, Lcom/taobao/accs/eudemon/EudemonManager;->reportKey:Ljava/lang/String;

    goto :goto_1
.end method

.method public static checkAndRenewPidFile(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 571
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "agoo.pid"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 572
    .local v4, "oFile":Ljava/io/File;
    sget-object v6, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pid path:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 573
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 574
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 576
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    const/4 v2, 0x0

    .line 584
    .local v2, "fw":Ljava/io/FileWriter;
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 585
    .local v5, "pid":I
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 586
    .end local v2    # "fw":Ljava/io/FileWriter;
    .local v3, "fw":Ljava/io/FileWriter;
    :try_start_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileWriter;->write([C)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 591
    if-eqz v3, :cond_1

    .line 592
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 596
    .end local v3    # "fw":Ljava/io/FileWriter;
    .end local v4    # "oFile":Ljava/io/File;
    .end local v5    # "pid":I
    :cond_1
    :goto_0
    return-void

    .line 577
    :catch_0
    move-exception v1

    .line 578
    .local v1, "e1":Ljava/lang/Throwable;
    sget-object v6, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "error in create file"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v1, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 593
    .end local v1    # "e1":Ljava/lang/Throwable;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "oFile":Ljava/io/File;
    .restart local v5    # "pid":I
    :catch_1
    move-exception v0

    .line 594
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v6, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "error"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v0, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 587
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .end local v5    # "pid":I
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catch_2
    move-exception v0

    .line 588
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    :try_start_4
    sget-object v6, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "save pid error"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v0, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 591
    if-eqz v2, :cond_1

    .line 592
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 593
    :catch_3
    move-exception v0

    .line 594
    sget-object v6, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "error"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v0, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 590
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    .line 591
    :goto_2
    if-eqz v2, :cond_2

    .line 592
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 595
    :cond_2
    :goto_3
    throw v6

    .line 593
    :catch_4
    move-exception v0

    .line 594
    .restart local v0    # "e":Ljava/lang/Throwable;
    sget-object v7, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "error"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v0, v9}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_3

    .line 590
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "pid":I
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_2

    .line 587
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_1
.end method

.method private copyBinToFiles()Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 199
    const/4 v5, 0x0

    .line 201
    .local v5, "in":Ljava/io/InputStream;
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/taobao/accs/eudemon/EudemonManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string/jumbo v9, "DaemonServer"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 202
    .local v7, "oFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 203
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 205
    :cond_0
    sget-object v8, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "open assets from = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0}, Lcom/taobao/accs/eudemon/EudemonManager;->getAbiPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "DaemonServer"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 209
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-boolean v8, p0, Lcom/taobao/accs/eudemon/EudemonManager;->debugMode:Z

    if-eqz v8, :cond_2

    .line 210
    iget-object v8, p0, Lcom/taobao/accs/eudemon/EudemonManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 211
    .local v1, "assertManage":Landroid/content/res/AssetManager;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/taobao/accs/eudemon/EudemonManager;->getAbiPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "DaemonServer"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 212
    const/16 v8, 0x64

    new-array v0, v8, [B

    .line 214
    .local v0, "array":[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    if-lez v6, :cond_3

    .line 215
    const/4 v8, 0x0

    invoke-virtual {v4, v0, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 221
    .end local v0    # "array":[B
    .end local v1    # "assertManage":Landroid/content/res/AssetManager;
    .end local v6    # "len":I
    :catch_0
    move-exception v3

    .line 222
    .local v3, "ep":Ljava/lang/Exception;
    :try_start_1
    sget-object v8, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "error in copy daemon files"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v3, v10}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    if-eqz v5, :cond_1

    .line 226
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 232
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 237
    .end local v3    # "ep":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 219
    :cond_2
    :try_start_4
    invoke-direct {p0, v4, v7}, Lcom/taobao/accs/eudemon/EudemonManager;->writeFileInRelease(Ljava/io/FileOutputStream;Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 224
    :cond_3
    if-eqz v5, :cond_4

    .line 226
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 232
    :cond_4
    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 233
    :catch_1
    move-exception v2

    .line 234
    .local v2, "e":Ljava/io/IOException;
    sget-object v8, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "error in close io"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v8, v9, v2, v10}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    .line 227
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 228
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "error in close input file"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v8, v9, v2, v10}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_3

    .line 227
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "ep":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 228
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "error in close input file"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v8, v9, v2, v10}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 233
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 234
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "error in close io"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v8, v9, v2, v10}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    .line 224
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ep":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    if-eqz v5, :cond_5

    .line 226
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 232
    :cond_5
    :goto_4
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 235
    :goto_5
    throw v8

    .line 227
    :catch_5
    move-exception v2

    .line 228
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v9, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "error in close input file"

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v2, v11}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_4

    .line 233
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 234
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v9, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "error in close io"

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v2, v11}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public static createAlarm(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 527
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 528
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 529
    .local v1, "hour":I
    const-string/jumbo v6, "alarm"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 531
    .local v2, "manager":Landroid/app/AlarmManager;
    if-eqz v2, :cond_1

    .line 532
    invoke-static {p0}, Lcom/taobao/accs/eudemon/EudemonManager;->getIntentForWakeup(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 533
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 534
    .local v4, "triggerAtTime":J
    const/16 v6, 0x17

    if-gt v1, v6, :cond_0

    const/4 v6, 0x6

    if-ge v1, v6, :cond_2

    .line 535
    :cond_0
    sget-object v6, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "time is night, do not wakeup cpu"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 536
    invoke-static {p0, v2, v3, v4, v5}, Lcom/taobao/accs/eudemon/EudemonManager;->createNightAlarm(Landroid/content/Context;Landroid/app/AlarmManager;Landroid/app/PendingIntent;J)V

    .line 544
    .end local v3    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v4    # "triggerAtTime":J
    :cond_1
    :goto_0
    return-void

    .line 538
    .restart local v3    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v4    # "triggerAtTime":J
    :cond_2
    sget-object v6, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "time is daytime, wakeup cpu for keeping connecntion"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    invoke-static {p0, v2, v3, v4, v5}, Lcom/taobao/accs/eudemon/EudemonManager;->createDayAlarm(Landroid/content/Context;Landroid/app/AlarmManager;Landroid/app/PendingIntent;J)V

    goto :goto_0
.end method

.method private static createDayAlarm(Landroid/content/Context;Landroid/app/AlarmManager;Landroid/app/PendingIntent;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "manager"    # Landroid/app/AlarmManager;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "triggerAtTime"    # J

    .prologue
    .line 547
    if-eqz p2, :cond_0

    .line 548
    invoke-virtual {p1, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 550
    const/4 v1, 0x2

    sget v0, Lcom/taobao/accs/eudemon/EudemonManager;->timeoutAlarmDay:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    add-long/2addr v2, p3

    sget v0, Lcom/taobao/accs/eudemon/EudemonManager;->timeoutAlarmDay:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    move-object v0, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 553
    :cond_0
    return-void
.end method

.method private static createNightAlarm(Landroid/content/Context;Landroid/app/AlarmManager;Landroid/app/PendingIntent;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "manager"    # Landroid/app/AlarmManager;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "triggerAtTime"    # J

    .prologue
    .line 556
    invoke-virtual {p1, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 558
    const/4 v1, 0x3

    sget v0, Lcom/taobao/accs/eudemon/EudemonManager;->timeoutAlarmNight:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    add-long/2addr v2, p3

    sget v0, Lcom/taobao/accs/eudemon/EudemonManager;->timeoutAlarmNight:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    move-object v0, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 560
    return-void
.end method

.method private doReportDaemonStat(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "pid"    # Ljava/lang/String;
    .param p2, "start_time"    # I
    .param p3, "end_time"    # I
    .param p4, "pull_count"    # Ljava/lang/String;
    .param p5, "exit_code"    # Ljava/lang/String;
    .param p6, "alive_time"    # I

    .prologue
    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AndroidVer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&Model="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&AndroidSdk="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&AccsVer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xdd

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&Appkey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/eudemon/EudemonManager;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&PullCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&Pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&StartTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&EndTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&ExitCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&AliveTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "params":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EUDEMON_ENDSTAT doReportDaemonStat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v1

    const v2, 0x101d1

    const-string/jumbo v3, "EUDEMON_ENDSTAT"

    invoke-virtual {v1, v2, v3, v0}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;)V

    .line 376
    return-void
.end method

.method public static execShell(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .locals 8
    .param p0, "strDir"    # Ljava/lang/String;
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 624
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string/jumbo v7, "sh"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 625
    .local v3, "localProcess":Ljava/lang/Process;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 627
    .local v1, "localDataInputStream":Ljava/io/DataInputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 629
    .local v2, "localDataOutputStream":Ljava/io/DataOutputStream;
    if-eqz p0, :cond_0

    const-string/jumbo v6, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 630
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cd "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 632
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " &\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 633
    const-string/jumbo v6, "exit \n"

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 635
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 636
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    .line 637
    .local v0, "buf":[B
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 638
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    .line 639
    .local v5, "strMsg":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 640
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    :cond_1
    const/4 v6, 0x1

    .line 646
    .end local v0    # "buf":[B
    .end local v1    # "localDataInputStream":Ljava/io/DataInputStream;
    .end local v2    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .end local v3    # "localProcess":Ljava/lang/Process;
    .end local v5    # "strMsg":Ljava/lang/String;
    :goto_0
    return v6

    .line 643
    :catch_0
    move-exception v4

    .line 644
    .local v4, "paramString1":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private getAbiPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/taobao/accs/eudemon/EudemonManager;->abi:Ljava/lang/String;

    const-string/jumbo v1, "arm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const-string/jumbo v0, "armeabi/"

    .line 154
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taobao/accs/eudemon/EudemonManager;->abi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getAmParams()Ljava/lang/String;
    .locals 5

    .prologue
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/taobao/accs/eudemon/EudemonManager;->AMPARAMS:Ljava/lang/String;

    const-string/jumbo v3, "\\{packname\\}"

    iget-object v4, p0, Lcom/taobao/accs/eudemon/EudemonManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 363
    .local v1, "sysVersion":I
    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    .line 364
    const-string/jumbo v2, " --user 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getBinParam()Ljava/lang/String;
    .locals 6

    .prologue
    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .local v3, "sb":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/data/data/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/accs/eudemon/EudemonManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "basePath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "-s \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/lib/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const-string/jumbo v4, "-n \"runServer\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "-p \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/taobao/accs/eudemon/EudemonManager;->getAmParams()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "-f \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "-t \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/taobao/accs/eudemon/EudemonManager;->timeout:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const-string/jumbo v4, "-c \"agoo.pid\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    iget-object v4, p0, Lcom/taobao/accs/eudemon/EudemonManager;->checkPackagePath:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 311
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "-P "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/accs/eudemon/EudemonManager;->checkPackagePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :cond_0
    iget-object v4, p0, Lcom/taobao/accs/eudemon/EudemonManager;->reportKey:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 313
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "-K "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/accs/eudemon/EudemonManager;->reportKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :cond_1
    iget-object v4, p0, Lcom/taobao/accs/eudemon/EudemonManager;->ua:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 318
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "-U "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/accs/eudemon/EudemonManager;->ua:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_2
    iget-object v4, p0, Lcom/taobao/accs/eudemon/EudemonManager;->reportLoc:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "-L "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/accs/eudemon/EudemonManager;->reportLoc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "-D "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/taobao/accs/eudemon/EudemonManager;->getReportData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    iget-object v4, p0, Lcom/taobao/accs/eudemon/EudemonManager;->serverIp:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 323
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "-I "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/accs/eudemon/EudemonManager;->serverIp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_4
    iget v4, p0, Lcom/taobao/accs/eudemon/EudemonManager;->serverPort:I

    if-lez v4, :cond_5

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "-O "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/taobao/accs/eudemon/EudemonManager;->serverPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :cond_5
    iget-object v4, p0, Lcom/taobao/accs/eudemon/EudemonManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/utl/UtilityImpl;->getProxyHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "proxyIp":Ljava/lang/String;
    iget-object v4, p0, Lcom/taobao/accs/eudemon/EudemonManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/utl/UtilityImpl;->getProxyPort(Landroid/content/Context;)I

    move-result v2

    .line 329
    .local v2, "proxyPort":I
    if-eqz v1, :cond_6

    if-lez v2, :cond_6

    .line 330
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "-X "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "-Y "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :cond_6
    iget-boolean v4, p0, Lcom/taobao/accs/eudemon/EudemonManager;->isTransparentProxy:Z

    if-eqz v4, :cond_7

    .line 338
    const-string/jumbo v4, "-T "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :cond_7
    const-string/jumbo v4, "-Z "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getFieldReflectively(Landroid/os/Build;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "build"    # Landroid/os/Build;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 166
    :try_start_0
    const-class v1, Landroid/os/Build;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 167
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 169
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const-string/jumbo v1, "Unknown"

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;IZ)Lcom/taobao/accs/eudemon/EudemonManager;
    .locals 4
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "timeout"    # I
    .param p2, "isDebug"    # Z

    .prologue
    .line 181
    :try_start_0
    sget-object v1, Lcom/taobao/accs/eudemon/EudemonManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 182
    sget-object v1, Lcom/taobao/accs/eudemon/EudemonManager;->soManager:Lcom/taobao/accs/eudemon/EudemonManager;

    if-nez v1, :cond_0

    .line 183
    new-instance v1, Lcom/taobao/accs/eudemon/EudemonManager;

    invoke-direct {v1, p0, p1, p2}, Lcom/taobao/accs/eudemon/EudemonManager;-><init>(Landroid/content/Context;IZ)V

    sput-object v1, Lcom/taobao/accs/eudemon/EudemonManager;->soManager:Lcom/taobao/accs/eudemon/EudemonManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_0
    sget-object v1, Lcom/taobao/accs/eudemon/EudemonManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 191
    :goto_0
    sget-object v1, Lcom/taobao/accs/eudemon/EudemonManager;->soManager:Lcom/taobao/accs/eudemon/EudemonManager;

    return-object v1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getInstance"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    sget-object v1, Lcom/taobao/accs/eudemon/EudemonManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/taobao/accs/eudemon/EudemonManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public static final getIntentForWakeup(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 509
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 510
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".intent.action.COCKROACH"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    const-string/jumbo v2, "cockroach"

    const-string/jumbo v3, "cockroach-PPreotect"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    const-string/jumbo v2, "pack"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 516
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private getReportData()Ljava/lang/String;
    .locals 5

    .prologue
    .line 344
    iget-object v2, p0, Lcom/taobao/accs/eudemon/EudemonManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "utdid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "null"

    .line 346
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{\"package\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/eudemon/EudemonManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\",\"appKey\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/eudemon/EudemonManager;->appKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\",\"utdid\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\",\"sdkVersion\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/taobao/accs/eudemon/EudemonManager;->sdkVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "data":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 353
    .end local v0    # "data":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 352
    .restart local v0    # "data":Ljava/lang/String;
    :catch_0
    move-exception v2

    sget-object v2, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getReportData failed for url encode, data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private initHandler()V
    .locals 2

    .prologue
    .line 144
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "soManager-threads"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/accs/eudemon/EudemonManager;->handerThread:Landroid/os/HandlerThread;

    .line 145
    iget-object v0, p0, Lcom/taobao/accs/eudemon/EudemonManager;->handerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 146
    iget-object v0, p0, Lcom/taobao/accs/eudemon/EudemonManager;->handerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 147
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/taobao/accs/eudemon/EudemonManager;->handerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/taobao/accs/eudemon/EudemonManager;->hanlder:Landroid/os/Handler;

    .line 148
    return-void
.end method

.method private lauchIt(Ljava/lang/String;)V
    .locals 4
    .param p1, "files"    # Ljava/lang/String;

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .local v0, "buff":Ljava/lang/StringBuilder;
    const-string/jumbo v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "chmod 500 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/taobao/accs/eudemon/EudemonManager;->execShell(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    .line 290
    const-string/jumbo v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/taobao/accs/eudemon/EudemonManager;->getBinParam()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/taobao/accs/eudemon/EudemonManager;->execShell(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    .line 291
    sget-object v1, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/taobao/accs/eudemon/EudemonManager;->getBinParam()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    return-void
.end method

.method private reportDaemonStat()V
    .locals 27

    .prologue
    .line 379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "/data/data/"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/eudemon/EudemonManager;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v25, "/"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v25, "eudemon"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 380
    .local v15, "fileName":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 381
    .local v14, "file":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    const/16 v16, 0x0

    .line 385
    .local v16, "fin":Ljava/io/FileInputStream;
    const/16 v18, 0x0

    .line 386
    .local v18, "fos":Ljava/io/FileOutputStream;
    const/16 v23, 0x0

    .line 387
    .local v23, "reader":Ljava/io/InputStreamReader;
    const/4 v9, 0x0

    .line 389
    .local v9, "buffreader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    .end local v16    # "fin":Ljava/io/FileInputStream;
    .local v17, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v24, Ljava/io/InputStreamReader;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 391
    .end local v23    # "reader":Ljava/io/InputStreamReader;
    .local v24, "reader":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v10, Ljava/io/BufferedReader;

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 394
    .end local v9    # "buffreader":Ljava/io/BufferedReader;
    .local v10, "buffreader":Ljava/io/BufferedReader;
    :try_start_3
    const-string/jumbo v21, ""

    .line 395
    .local v21, "output":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .local v20, "line":Ljava/lang/String;
    if-eqz v20, :cond_8

    .line 396
    const-string/jumbo v2, "\\|"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 397
    .local v13, "fields":[Ljava/lang/String;
    array-length v2, v13

    const/16 v25, 0x5

    move/from16 v0, v25

    if-ne v2, v0, :cond_2

    .line 400
    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 401
    .local v3, "pid":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v13, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 402
    .local v4, "start_time":I
    const/4 v2, 0x2

    aget-object v2, v13, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 403
    .local v5, "end_time":I
    sub-int v8, v5, v4

    .line 404
    .local v8, "alive_time":I
    const/4 v2, 0x3

    aget-object v2, v13, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 405
    .local v6, "pull_count":Ljava/lang/String;
    const/4 v2, 0x4

    aget-object v2, v13, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 407
    .local v7, "exit_code":Ljava/lang/String;
    const-string/jumbo v2, "0"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 408
    new-instance v22, Ljava/io/File;

    const-string/jumbo v2, "/proc"

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .local v22, "pidFile":Ljava/io/File;
    sget-object v2, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "pidfile:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v25, "\n"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 413
    goto/16 :goto_1

    .line 415
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/taobao/accs/eudemon/EudemonManager;->timeout:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v8, v2

    .end local v22    # "pidFile":Ljava/io/File;
    :cond_4
    move-object/from16 v2, p0

    .line 417
    invoke-direct/range {v2 .. v8}, Lcom/taobao/accs/eudemon/EudemonManager;->doReportDaemonStat(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/16 :goto_1

    .line 424
    .end local v3    # "pid":Ljava/lang/String;
    .end local v4    # "start_time":I
    .end local v5    # "end_time":I
    .end local v6    # "pull_count":Ljava/lang/String;
    .end local v7    # "exit_code":Ljava/lang/String;
    .end local v8    # "alive_time":I
    .end local v13    # "fields":[Ljava/lang/String;
    .end local v20    # "line":Ljava/lang/String;
    .end local v21    # "output":Ljava/lang/String;
    :catch_0
    move-exception v12

    move-object v9, v10

    .end local v10    # "buffreader":Ljava/io/BufferedReader;
    .restart local v9    # "buffreader":Ljava/io/BufferedReader;
    move-object/from16 v23, v24

    .end local v24    # "reader":Ljava/io/InputStreamReader;
    .restart local v23    # "reader":Ljava/io/InputStreamReader;
    move-object/from16 v16, v17

    .line 425
    .end local v17    # "fin":Ljava/io/FileInputStream;
    .local v12, "ep":Ljava/lang/Exception;
    .restart local v16    # "fin":Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    sget-object v2, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v25, "report daemon stat exp:"

    move-object/from16 v0, v25

    invoke-static {v2, v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 427
    if-eqz v9, :cond_5

    .line 429
    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    .line 434
    :cond_5
    :goto_3
    if-eqz v23, :cond_6

    .line 436
    :try_start_6
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7

    .line 441
    :cond_6
    :goto_4
    if-eqz v16, :cond_7

    .line 443
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 448
    :cond_7
    :goto_5
    if-eqz v18, :cond_0

    .line 450
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 451
    :catch_1
    move-exception v11

    .line 452
    .local v11, "e":Ljava/io/IOException;
    sget-object v2, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v25, "error in close input file"

    move-object/from16 v0, v25

    invoke-static {v2, v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 420
    .end local v9    # "buffreader":Ljava/io/BufferedReader;
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "ep":Ljava/lang/Exception;
    .end local v16    # "fin":Ljava/io/FileInputStream;
    .end local v23    # "reader":Ljava/io/InputStreamReader;
    .restart local v10    # "buffreader":Ljava/io/BufferedReader;
    .restart local v17    # "fin":Ljava/io/FileInputStream;
    .restart local v20    # "line":Ljava/lang/String;
    .restart local v21    # "output":Ljava/lang/String;
    .restart local v24    # "reader":Ljava/io/InputStreamReader;
    :cond_8
    :try_start_9
    new-instance v19, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 421
    .end local v18    # "fos":Ljava/io/FileOutputStream;
    .local v19, "fos":Ljava/io/FileOutputStream;
    :try_start_a
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 422
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_10
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 427
    if-eqz v10, :cond_9

    .line 429
    :try_start_b
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    .line 434
    :cond_9
    :goto_6
    if-eqz v24, :cond_a

    .line 436
    :try_start_c
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    .line 441
    :cond_a
    :goto_7
    if-eqz v17, :cond_b

    .line 443
    :try_start_d
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 448
    :cond_b
    :goto_8
    if-eqz v19, :cond_10

    .line 450
    :try_start_e
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_0

    .line 451
    :catch_2
    move-exception v11

    .line 452
    .restart local v11    # "e":Ljava/io/IOException;
    sget-object v2, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v25, "error in close input file"

    move-object/from16 v0, v25

    invoke-static {v2, v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 430
    .end local v11    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v11

    .line 431
    .local v11, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v25, "error in close buffreader stream"

    move-object/from16 v0, v25

    invoke-static {v2, v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 437
    .end local v11    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v11

    .line 438
    .restart local v11    # "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v25, "error in close reader stream"

    move-object/from16 v0, v25

    invoke-static {v2, v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 444
    .end local v11    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v11

    .line 445
    .local v11, "e":Ljava/io/IOException;
    sget-object v2, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v25, "error in close input file"

    move-object/from16 v0, v25

    invoke-static {v2, v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 430
    .end local v10    # "buffreader":Ljava/io/BufferedReader;
    .end local v11    # "e":Ljava/io/IOException;
    .end local v17    # "fin":Ljava/io/FileInputStream;
    .end local v19    # "fos":Ljava/io/FileOutputStream;
    .end local v20    # "line":Ljava/lang/String;
    .end local v21    # "output":Ljava/lang/String;
    .end local v24    # "reader":Ljava/io/InputStreamReader;
    .restart local v9    # "buffreader":Ljava/io/BufferedReader;
    .restart local v12    # "ep":Ljava/lang/Exception;
    .restart local v16    # "fin":Ljava/io/FileInputStream;
    .restart local v18    # "fos":Ljava/io/FileOutputStream;
    .restart local v23    # "reader":Ljava/io/InputStreamReader;
    :catch_6
    move-exception v11

    .line 431
    .local v11, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v25, "error in close buffreader stream"

    move-object/from16 v0, v25

    invoke-static {v2, v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 437
    .end local v11    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v11

    .line 438
    .restart local v11    # "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v25, "error in close reader stream"

    move-object/from16 v0, v25

    invoke-static {v2, v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 444
    .end local v11    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v11

    .line 445
    .local v11, "e":Ljava/io/IOException;
    sget-object v2, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v25, "error in close input file"

    move-object/from16 v0, v25

    invoke-static {v2, v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 427
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "ep":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :goto_9
    if-eqz v9, :cond_c

    .line 429
    :try_start_f
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9

    .line 434
    :cond_c
    :goto_a
    if-eqz v23, :cond_d

    .line 436
    :try_start_10
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStreamReader;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_a

    .line 441
    :cond_d
    :goto_b
    if-eqz v16, :cond_e

    .line 443
    :try_start_11
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    .line 448
    :cond_e
    :goto_c
    if-eqz v18, :cond_f

    .line 450
    :try_start_12
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    .line 453
    :cond_f
    :goto_d
    throw v2

    .line 430
    :catch_9
    move-exception v11

    .line 431
    .local v11, "e":Ljava/lang/Throwable;
    sget-object v25, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v26, "error in close buffreader stream"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 437
    .end local v11    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v11

    .line 438
    .restart local v11    # "e":Ljava/lang/Throwable;
    sget-object v25, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v26, "error in close reader stream"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 444
    .end local v11    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v11

    .line 445
    .local v11, "e":Ljava/io/IOException;
    sget-object v25, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v26, "error in close input file"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 451
    .end local v11    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v11

    .line 452
    .restart local v11    # "e":Ljava/io/IOException;
    sget-object v25, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v26, "error in close input file"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 427
    .end local v11    # "e":Ljava/io/IOException;
    .end local v16    # "fin":Ljava/io/FileInputStream;
    .restart local v17    # "fin":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    move-object/from16 v16, v17

    .end local v17    # "fin":Ljava/io/FileInputStream;
    .restart local v16    # "fin":Ljava/io/FileInputStream;
    goto :goto_9

    .end local v16    # "fin":Ljava/io/FileInputStream;
    .end local v23    # "reader":Ljava/io/InputStreamReader;
    .restart local v17    # "fin":Ljava/io/FileInputStream;
    .restart local v24    # "reader":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v2

    move-object/from16 v23, v24

    .end local v24    # "reader":Ljava/io/InputStreamReader;
    .restart local v23    # "reader":Ljava/io/InputStreamReader;
    move-object/from16 v16, v17

    .end local v17    # "fin":Ljava/io/FileInputStream;
    .restart local v16    # "fin":Ljava/io/FileInputStream;
    goto :goto_9

    .end local v9    # "buffreader":Ljava/io/BufferedReader;
    .end local v16    # "fin":Ljava/io/FileInputStream;
    .end local v23    # "reader":Ljava/io/InputStreamReader;
    .restart local v10    # "buffreader":Ljava/io/BufferedReader;
    .restart local v17    # "fin":Ljava/io/FileInputStream;
    .restart local v24    # "reader":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v2

    move-object v9, v10

    .end local v10    # "buffreader":Ljava/io/BufferedReader;
    .restart local v9    # "buffreader":Ljava/io/BufferedReader;
    move-object/from16 v23, v24

    .end local v24    # "reader":Ljava/io/InputStreamReader;
    .restart local v23    # "reader":Ljava/io/InputStreamReader;
    move-object/from16 v16, v17

    .end local v17    # "fin":Ljava/io/FileInputStream;
    .restart local v16    # "fin":Ljava/io/FileInputStream;
    goto :goto_9

    .end local v9    # "buffreader":Ljava/io/BufferedReader;
    .end local v16    # "fin":Ljava/io/FileInputStream;
    .end local v18    # "fos":Ljava/io/FileOutputStream;
    .end local v23    # "reader":Ljava/io/InputStreamReader;
    .restart local v10    # "buffreader":Ljava/io/BufferedReader;
    .restart local v17    # "fin":Ljava/io/FileInputStream;
    .restart local v19    # "fos":Ljava/io/FileOutputStream;
    .restart local v20    # "line":Ljava/lang/String;
    .restart local v21    # "output":Ljava/lang/String;
    .restart local v24    # "reader":Ljava/io/InputStreamReader;
    :catchall_4
    move-exception v2

    move-object v9, v10

    .end local v10    # "buffreader":Ljava/io/BufferedReader;
    .restart local v9    # "buffreader":Ljava/io/BufferedReader;
    move-object/from16 v23, v24

    .end local v24    # "reader":Ljava/io/InputStreamReader;
    .restart local v23    # "reader":Ljava/io/InputStreamReader;
    move-object/from16 v18, v19

    .end local v19    # "fos":Ljava/io/FileOutputStream;
    .restart local v18    # "fos":Ljava/io/FileOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "fin":Ljava/io/FileInputStream;
    .restart local v16    # "fin":Ljava/io/FileInputStream;
    goto :goto_9

    .line 424
    .end local v20    # "line":Ljava/lang/String;
    .end local v21    # "output":Ljava/lang/String;
    :catch_d
    move-exception v12

    goto/16 :goto_2

    .end local v16    # "fin":Ljava/io/FileInputStream;
    .restart local v17    # "fin":Ljava/io/FileInputStream;
    :catch_e
    move-exception v12

    move-object/from16 v16, v17

    .end local v17    # "fin":Ljava/io/FileInputStream;
    .restart local v16    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v16    # "fin":Ljava/io/FileInputStream;
    .end local v23    # "reader":Ljava/io/InputStreamReader;
    .restart local v17    # "fin":Ljava/io/FileInputStream;
    .restart local v24    # "reader":Ljava/io/InputStreamReader;
    :catch_f
    move-exception v12

    move-object/from16 v23, v24

    .end local v24    # "reader":Ljava/io/InputStreamReader;
    .restart local v23    # "reader":Ljava/io/InputStreamReader;
    move-object/from16 v16, v17

    .end local v17    # "fin":Ljava/io/FileInputStream;
    .restart local v16    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v9    # "buffreader":Ljava/io/BufferedReader;
    .end local v16    # "fin":Ljava/io/FileInputStream;
    .end local v18    # "fos":Ljava/io/FileOutputStream;
    .end local v23    # "reader":Ljava/io/InputStreamReader;
    .restart local v10    # "buffreader":Ljava/io/BufferedReader;
    .restart local v17    # "fin":Ljava/io/FileInputStream;
    .restart local v19    # "fos":Ljava/io/FileOutputStream;
    .restart local v20    # "line":Ljava/lang/String;
    .restart local v21    # "output":Ljava/lang/String;
    .restart local v24    # "reader":Ljava/io/InputStreamReader;
    :catch_10
    move-exception v12

    move-object v9, v10

    .end local v10    # "buffreader":Ljava/io/BufferedReader;
    .restart local v9    # "buffreader":Ljava/io/BufferedReader;
    move-object/from16 v23, v24

    .end local v24    # "reader":Ljava/io/InputStreamReader;
    .restart local v23    # "reader":Ljava/io/InputStreamReader;
    move-object/from16 v18, v19

    .end local v19    # "fos":Ljava/io/FileOutputStream;
    .restart local v18    # "fos":Ljava/io/FileOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "fin":Ljava/io/FileInputStream;
    .restart local v16    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v9    # "buffreader":Ljava/io/BufferedReader;
    .end local v16    # "fin":Ljava/io/FileInputStream;
    .end local v18    # "fos":Ljava/io/FileOutputStream;
    .end local v23    # "reader":Ljava/io/InputStreamReader;
    .restart local v10    # "buffreader":Ljava/io/BufferedReader;
    .restart local v17    # "fin":Ljava/io/FileInputStream;
    .restart local v19    # "fos":Ljava/io/FileOutputStream;
    .restart local v24    # "reader":Ljava/io/InputStreamReader;
    :cond_10
    move-object v9, v10

    .end local v10    # "buffreader":Ljava/io/BufferedReader;
    .restart local v9    # "buffreader":Ljava/io/BufferedReader;
    move-object/from16 v23, v24

    .end local v24    # "reader":Ljava/io/InputStreamReader;
    .restart local v23    # "reader":Ljava/io/InputStreamReader;
    move-object/from16 v18, v19

    .end local v19    # "fos":Ljava/io/FileOutputStream;
    .restart local v18    # "fos":Ljava/io/FileOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "fin":Ljava/io/FileInputStream;
    .restart local v16    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method private startInternal()V
    .locals 6

    .prologue
    .line 473
    sget-object v2, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "api level is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    iget-object v2, p0, Lcom/taobao/accs/eudemon/EudemonManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/eudemon/EudemonManager;->createAlarm(Landroid/content/Context;)V

    .line 476
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    .line 478
    :try_start_0
    invoke-direct {p0}, Lcom/taobao/accs/eudemon/EudemonManager;->copyBinToFiles()Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, "fileName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/taobao/accs/eudemon/EudemonManager;->reportDaemonStat()V

    .line 480
    invoke-direct {p0, v1}, Lcom/taobao/accs/eudemon/EudemonManager;->lauchIt(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v2

    const v3, 0x101d1

    const-string/jumbo v4, "EUDEMON_START"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v3, v4, v5}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;)V

    .line 487
    return-void

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private stopInternal()V
    .locals 3

    .prologue
    .line 500
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/eudemon/EudemonManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "daemonserver.pid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 504
    :cond_0
    return-void
.end method

.method private writeFileInRelease(Ljava/io/FileOutputStream;Ljava/io/File;)V
    .locals 18
    .param p1, "fos"    # Ljava/io/FileOutputStream;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/accs/eudemon/EudemonManager;->abi:Ljava/lang/String;

    invoke-static {v13}, Lcom/taobao/accs/eudemon/SoData;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 243
    .local v6, "data":Ljava/lang/String;
    sget-object v13, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, ">>>soDataSize:datasize:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v11

    .line 245
    .local v11, "soData":[B
    sget-object v13, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, ">>>soDataSize:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v11

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    array-length v13, v11

    if-gtz v13, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    if-eqz p1, :cond_0

    .line 252
    const/4 v8, 0x0

    .line 254
    .local v8, "in":Ljava/io/ByteArrayInputStream;
    new-instance v12, Landroid/os/StatFs;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 255
    .local v12, "statFs":Landroid/os/StatFs;
    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    .line 256
    .local v3, "blockSize":I
    invoke-virtual {v12}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v13

    int-to-long v4, v13

    .line 257
    .local v4, "availableBlocks":J
    int-to-long v14, v3

    mul-long/2addr v14, v4

    array-length v13, v11

    int-to-long v0, v13

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-gez v13, :cond_2

    .line 258
    sget-object v13, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "Disk is not enough for writing this file"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 262
    :cond_2
    :try_start_0
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    .end local v8    # "in":Ljava/io/ByteArrayInputStream;
    .local v9, "in":Ljava/io/ByteArrayInputStream;
    const/16 v13, 0x64

    :try_start_1
    new-array v2, v13, [B

    .line 265
    .local v2, "array":[B
    :goto_1
    const/4 v13, 0x0

    const/16 v14, 0x64

    invoke-virtual {v9, v2, v13, v14}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v10

    .local v10, "len":I
    if-ltz v10, :cond_3

    .line 266
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v13, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 268
    .end local v2    # "array":[B
    .end local v10    # "len":I
    :catch_0
    move-exception v7

    move-object v8, v9

    .line 269
    .end local v9    # "in":Ljava/io/ByteArrayInputStream;
    .local v7, "e":Ljava/io/IOException;
    .restart local v8    # "in":Ljava/io/ByteArrayInputStream;
    :goto_2
    :try_start_2
    sget-object v13, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "error in write files"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v7, v15}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/FileDescriptor;->sync()V

    .line 274
    if-eqz v8, :cond_0

    .line 275
    :try_start_3
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 277
    :catch_1
    move-exception v7

    .line 278
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 272
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "array":[B
    .restart local v9    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v10    # "len":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/FileDescriptor;->sync()V

    .line 274
    if-eqz v9, :cond_0

    .line 275
    :try_start_4
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 277
    :catch_2
    move-exception v7

    .line 278
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 272
    .end local v2    # "array":[B
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "in":Ljava/io/ByteArrayInputStream;
    .end local v10    # "len":I
    .restart local v8    # "in":Ljava/io/ByteArrayInputStream;
    :catchall_0
    move-exception v13

    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/FileDescriptor;->sync()V

    .line 274
    if-eqz v8, :cond_4

    .line 275
    :try_start_5
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 279
    :cond_4
    :goto_4
    throw v13

    .line 277
    :catch_3
    move-exception v7

    .line 278
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 272
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v9    # "in":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v13

    move-object v8, v9

    .end local v9    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "in":Ljava/io/ByteArrayInputStream;
    goto :goto_3

    .line 268
    :catch_4
    move-exception v7

    goto :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 602
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_1

    .line 603
    invoke-direct {p0}, Lcom/taobao/accs/eudemon/EudemonManager;->startInternal()V

    .line 610
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 604
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 605
    invoke-direct {p0}, Lcom/taobao/accs/eudemon/EudemonManager;->stopInternal()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/taobao/accs/eudemon/EudemonManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "handleMessage error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 467
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 468
    .local v0, "startMessage":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 469
    iget-object v1, p0, Lcom/taobao/accs/eudemon/EudemonManager;->hanlder:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 470
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 494
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 495
    .local v0, "startMessage":Landroid/os/Message;
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 496
    iget-object v1, p0, Lcom/taobao/accs/eudemon/EudemonManager;->hanlder:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 497
    return-void
.end method
