.class public Lc8/uPc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/tPc;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "failed"


# instance fields
.field public a:Landroid/app/Activity;

.field private c:Lc8/KKc;

.field private final d:Ljava/lang/Object;

.field private e:Z

.field private f:Lc8/tPc;

.field private g:Landroid/content/ServiceConnection;

.field private h:Lc8/NKc;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lc8/tPc;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-class v0, Lc8/KKc;

    iput-object v0, p0, Lc8/uPc;->d:Ljava/lang/Object;

    .line 44
    new-instance v0, Lc8/vPc;

    invoke-direct {v0, p0}, Lc8/vPc;-><init>(Lc8/uPc;)V

    iput-object v0, p0, Lc8/uPc;->g:Landroid/content/ServiceConnection;

    .line 180
    new-instance v0, Lc8/wPc;

    invoke-direct {v0, p0}, Lc8/wPc;-><init>(Lc8/uPc;)V

    iput-object v0, p0, Lc8/uPc;->h:Lc8/NKc;

    .line 40
    iput-object p1, p0, Lc8/uPc;->a:Landroid/app/Activity;

    .line 41
    iput-object p2, p0, Lc8/uPc;->f:Lc8/tPc;

    .line 42
    return-void
.end method

.method static synthetic a(Lc8/uPc;Lc8/KKc;)Lc8/KKc;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lc8/uPc;->c:Lc8/KKc;

    return-object p1
.end method

.method static synthetic a(Lc8/uPc;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lc8/uPc;->d:Ljava/lang/Object;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/uPc;->a:Landroid/app/Activity;

    .line 178
    return-void
.end method

.method private a(Lc8/BPc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 82
    if-eqz p1, :cond_0

    iget v0, p1, Lc8/BPc;->b:I

    const/16 v1, 0x4e

    if-gt v0, v1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-static {}, Lc8/CPc;->a()Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 88
    const-string/jumbo v2, "com.alipay.android.app.TransProcessPayActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    iget-object v0, p0, Lc8/uPc;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 90
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0
.end method

.method static synthetic b(Lc8/uPc;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lc8/uPc;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 95
    invoke-static {}, Lc8/CPc;->a()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".IAlixPay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lc8/uPc;->a:Landroid/app/Activity;

    invoke-static {v1}, Lc8/CPc;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 103
    :try_start_0
    iget-object v2, p0, Lc8/uPc;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lc8/uPc;->g:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    new-instance v0, Ljava/lang/Throwable;

    const-string/jumbo v1, "bindService fail"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    const-string/jumbo v1, "biz"

    const-string/jumbo v2, "ClientBindServiceFailed"

    invoke-static {v1, v2, v0}, Lc8/rOc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    const-string/jumbo v0, "failed"

    .line 173
    :cond_0
    :goto_0
    return-object v0

    .line 111
    :cond_1
    iget-object v2, p0, Lc8/uPc;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 112
    :try_start_1
    iget-object v0, p0, Lc8/uPc;->c:Lc8/KKc;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    .line 114
    :try_start_2
    iget-object v0, p0, Lc8/uPc;->d:Ljava/lang/Object;

    invoke-static {}, Lc8/QOc;->b()Lc8/QOc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/QOc;->a()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    :cond_2
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    :try_start_4
    iget-object v0, p0, Lc8/uPc;->c:Lc8/KKc;

    if-nez v0, :cond_3

    .line 126
    iget-object v0, p0, Lc8/uPc;->a:Landroid/app/Activity;

    invoke-static {v0}, Lc8/CPc;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v2, p0, Lc8/uPc;->a:Landroid/app/Activity;

    invoke-static {v2}, Lc8/CPc;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 130
    const-string/jumbo v3, "biz"

    const-string/jumbo v4, "ClientBindFailed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lc8/rOc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string/jumbo v0, "failed"
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 152
    :try_start_5
    iget-object v1, p0, Lc8/uPc;->c:Lc8/KKc;

    iget-object v2, p0, Lc8/uPc;->h:Lc8/NKc;

    invoke-interface {v1, v2}, Lc8/KKc;->unregisterCallback(Lc8/NKc;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_a

    .line 158
    :goto_2
    :try_start_6
    iget-object v1, p0, Lc8/uPc;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lc8/uPc;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_9

    .line 163
    :goto_3
    iput-object v6, p0, Lc8/uPc;->f:Lc8/tPc;

    .line 164
    iput-object v6, p0, Lc8/uPc;->h:Lc8/NKc;

    .line 165
    iput-object v6, p0, Lc8/uPc;->g:Landroid/content/ServiceConnection;

    .line 166
    iput-object v6, p0, Lc8/uPc;->c:Lc8/KKc;

    .line 167
    iget-boolean v1, p0, Lc8/uPc;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/uPc;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lc8/uPc;->a:Landroid/app/Activity;

    invoke-virtual {v1, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 169
    iput-boolean v7, p0, Lc8/uPc;->e:Z

    goto :goto_0

    .line 115
    :catch_1
    move-exception v0

    .line 116
    :try_start_7
    const-string/jumbo v3, "biz"

    const-string/jumbo v4, "BindWaitTimeoutEx"

    invoke-static {v3, v4, v0}, Lc8/rOc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    .line 135
    :cond_3
    :try_start_8
    iget-object v0, p0, Lc8/uPc;->f:Lc8/tPc;

    if-eqz v0, :cond_4

    .line 136
    iget-object v0, p0, Lc8/uPc;->f:Lc8/tPc;

    invoke-interface {v0}, Lc8/tPc;->a()V

    .line 139
    :cond_4
    iget-object v0, p0, Lc8/uPc;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_5

    .line 140
    iget-object v0, p0, Lc8/uPc;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/uPc;->e:Z

    .line 144
    :cond_5
    iget-object v0, p0, Lc8/uPc;->c:Lc8/KKc;

    iget-object v1, p0, Lc8/uPc;->h:Lc8/NKc;

    invoke-interface {v0, v1}, Lc8/KKc;->registerCallback(Lc8/NKc;)V

    .line 145
    iget-object v0, p0, Lc8/uPc;->c:Lc8/KKc;

    invoke-interface {v0, p1}, Lc8/KKc;->Pay(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v0

    .line 152
    :try_start_9
    iget-object v1, p0, Lc8/uPc;->c:Lc8/KKc;

    iget-object v2, p0, Lc8/uPc;->h:Lc8/NKc;

    invoke-interface {v1, v2}, Lc8/KKc;->unregisterCallback(Lc8/NKc;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_8

    .line 158
    :goto_4
    :try_start_a
    iget-object v1, p0, Lc8/uPc;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lc8/uPc;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_7

    .line 163
    :goto_5
    iput-object v6, p0, Lc8/uPc;->f:Lc8/tPc;

    .line 164
    iput-object v6, p0, Lc8/uPc;->h:Lc8/NKc;

    .line 165
    iput-object v6, p0, Lc8/uPc;->g:Landroid/content/ServiceConnection;

    .line 166
    iput-object v6, p0, Lc8/uPc;->c:Lc8/KKc;

    .line 167
    iget-boolean v1, p0, Lc8/uPc;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/uPc;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lc8/uPc;->a:Landroid/app/Activity;

    invoke-virtual {v1, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 169
    iput-boolean v7, p0, Lc8/uPc;->e:Z

    goto/16 :goto_0

    .line 146
    :catch_2
    move-exception v0

    .line 148
    :try_start_b
    const-string/jumbo v1, "biz"

    const-string/jumbo v2, "ClientBindException"

    invoke-static {v1, v2, v0}, Lc8/rOc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    invoke-static {}, Lc8/qOc;->a()Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-object v0

    .line 152
    :try_start_c
    iget-object v1, p0, Lc8/uPc;->c:Lc8/KKc;

    iget-object v2, p0, Lc8/uPc;->h:Lc8/NKc;

    invoke-interface {v1, v2}, Lc8/KKc;->unregisterCallback(Lc8/NKc;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    .line 158
    :goto_6
    :try_start_d
    iget-object v1, p0, Lc8/uPc;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lc8/uPc;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    .line 163
    :goto_7
    iput-object v6, p0, Lc8/uPc;->f:Lc8/tPc;

    .line 164
    iput-object v6, p0, Lc8/uPc;->h:Lc8/NKc;

    .line 165
    iput-object v6, p0, Lc8/uPc;->g:Landroid/content/ServiceConnection;

    .line 166
    iput-object v6, p0, Lc8/uPc;->c:Lc8/KKc;

    .line 167
    iget-boolean v1, p0, Lc8/uPc;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/uPc;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lc8/uPc;->a:Landroid/app/Activity;

    invoke-virtual {v1, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 169
    iput-boolean v7, p0, Lc8/uPc;->e:Z

    goto/16 :goto_0

    .line 151
    :catchall_1
    move-exception v0

    .line 152
    :try_start_e
    iget-object v1, p0, Lc8/uPc;->c:Lc8/KKc;

    iget-object v2, p0, Lc8/uPc;->h:Lc8/NKc;

    invoke-interface {v1, v2}, Lc8/KKc;->unregisterCallback(Lc8/NKc;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4

    .line 158
    :goto_8
    :try_start_f
    iget-object v1, p0, Lc8/uPc;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lc8/uPc;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3

    .line 163
    :goto_9
    iput-object v6, p0, Lc8/uPc;->f:Lc8/tPc;

    .line 164
    iput-object v6, p0, Lc8/uPc;->h:Lc8/NKc;

    .line 165
    iput-object v6, p0, Lc8/uPc;->g:Landroid/content/ServiceConnection;

    .line 166
    iput-object v6, p0, Lc8/uPc;->c:Lc8/KKc;

    .line 167
    iget-boolean v1, p0, Lc8/uPc;->e:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lc8/uPc;->a:Landroid/app/Activity;

    if-eqz v1, :cond_6

    .line 168
    iget-object v1, p0, Lc8/uPc;->a:Landroid/app/Activity;

    invoke-virtual {v1, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 169
    iput-boolean v7, p0, Lc8/uPc;->e:Z

    :cond_6
    throw v0

    :catch_3
    move-exception v1

    goto :goto_9

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto/16 :goto_5

    :catch_8
    move-exception v1

    goto/16 :goto_4

    :catch_9
    move-exception v1

    goto/16 :goto_3

    :catch_a
    move-exception v1

    goto/16 :goto_2
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p0, Lc8/uPc;->a:Landroid/app/Activity;

    invoke-static {v0}, Lc8/CPc;->a(Landroid/content/Context;)Lc8/BPc;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lc8/BPc;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    const-string/jumbo v0, "failed"

    .line 78
    :goto_0
    return-object v0

    .line 1082
    :cond_0
    if-eqz v0, :cond_1

    iget v0, v0, Lc8/BPc;->b:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x4e

    if-gt v0, v1, :cond_2

    .line 78
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lc8/uPc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1086
    :cond_2
    :try_start_1
    invoke-static {}, Lc8/CPc;->a()Ljava/lang/String;

    move-result-object v0

    .line 1087
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1088
    const-string/jumbo v2, "com.alipay.android.app.TransProcessPayActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1089
    iget-object v0, p0, Lc8/uPc;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1090
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const-string/jumbo v1, "biz"

    const-string/jumbo v2, "CheckClientSignEx"

    invoke-static {v1, v2, v0}, Lc8/rOc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
