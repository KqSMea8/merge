.class public Lc8/VXf;
.super Landroid/os/HandlerThread;
.source "WXThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/TXf;,
        Lc8/UXf;
    }
.end annotation


# static fields
.field private static final SYSTEM_ACTION_PREFIX:Ljava/lang/String; = "android.view."


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lc8/VXf;->start()V

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lc8/VXf;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/VXf;->mHandler:Landroid/os/Handler;

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 148
    invoke-virtual {p0}, Lc8/VXf;->start()V

    .line 149
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lc8/VXf;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/VXf;->mHandler:Landroid/os/Handler;

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/os/Handler$Callback;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 137
    invoke-virtual {p0}, Lc8/VXf;->start()V

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lc8/VXf;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {p3}, Lc8/VXf;->secure(Landroid/os/Handler$Callback;)Landroid/os/Handler$Callback;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lc8/VXf;->mHandler:Landroid/os/Handler;

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lc8/VXf;->start()V

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lc8/VXf;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {p2}, Lc8/VXf;->secure(Landroid/os/Handler$Callback;)Landroid/os/Handler$Callback;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lc8/VXf;->mHandler:Landroid/os/Handler;

    .line 128
    return-void
.end method

.method public static secure(Landroid/os/Handler$Callback;)Landroid/os/Handler$Callback;
    .locals 1
    .param p0, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 107
    if-eqz p0, :cond_0

    instance-of v0, p0, Lc8/TXf;

    if-eqz v0, :cond_1

    .line 111
    .end local p0    # "callback":Landroid/os/Handler$Callback;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "callback":Landroid/os/Handler$Callback;
    :cond_1
    new-instance v0, Lc8/TXf;

    invoke-direct {v0, p0}, Lc8/TXf;-><init>(Landroid/os/Handler$Callback;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 92
    if-eqz p0, :cond_0

    instance-of v1, p0, Lc8/UXf;

    if-eqz v1, :cond_1

    .line 103
    .end local p0    # "runnable":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-object p0

    .line 95
    .restart local p0    # "runnable":Ljava/lang/Runnable;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string/jumbo v1, "android.view."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    :cond_2
    new-instance v1, Lc8/UXf;

    invoke-direct {v1, p0}, Lc8/UXf;-><init>(Ljava/lang/Runnable;)V

    move-object p0, v1

    goto :goto_0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lc8/VXf;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public isWXThreadAlive()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lc8/VXf;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/VXf;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/VXf;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public quit()Z
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lc8/VXf;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lc8/VXf;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 165
    :cond_0
    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    return v0
.end method
