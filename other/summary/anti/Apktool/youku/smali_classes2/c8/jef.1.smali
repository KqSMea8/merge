.class public final Lc8/jef;
.super Landroid/os/AsyncTask;
.source "LayoutFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/mef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LayoutFileDownLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final layoutFileManager:Lc8/mef;

.field private listener:Lc8/kef;

.field private request:Lc8/lef;

.field private totalDownloadNum:I


# direct methods
.method public constructor <init>(Lc8/mef;)V
    .locals 0
    .param p1, "layoutFileManager"    # Lc8/mef;

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 124
    iput-object p1, p0, Lc8/jef;->layoutFileManager:Lc8/mef;

    .line 125
    return-void
.end method

.method static synthetic access$002(Lc8/jef;Lc8/lef;)Lc8/lef;
    .locals 0
    .param p0, "x0"    # Lc8/jef;
    .param p1, "x1"    # Lc8/lef;

    .prologue
    .line 113
    iput-object p1, p0, Lc8/jef;->request:Lc8/lef;

    return-object p1
.end method

.method static synthetic access$102(Lc8/jef;Lc8/kef;)Lc8/kef;
    .locals 0
    .param p0, "x0"    # Lc8/jef;
    .param p1, "x1"    # Lc8/kef;

    .prologue
    .line 113
    iput-object p1, p0, Lc8/jef;->listener:Lc8/kef;

    return-object p1
.end method

.method static synthetic access$202(Lc8/jef;I)I
    .locals 0
    .param p0, "x0"    # Lc8/jef;
    .param p1, "x1"    # I

    .prologue
    .line 113
    iput p1, p0, Lc8/jef;->totalDownloadNum:I

    return p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 130
    :try_start_0
    iget-object v2, p0, Lc8/jef;->layoutFileManager:Lc8/mef;

    invoke-static {v2}, Lc8/mef;->access$300(Lc8/mef;)Lc8/sef;

    move-result-object v2

    iget-object v3, p0, Lc8/jef;->request:Lc8/lef;

    iget-object v3, v3, Lc8/lef;->layoutKey:Ljava/lang/String;

    iget-object v4, p0, Lc8/jef;->request:Lc8/lef;

    iget-object v4, v4, Lc8/lef;->url:Ljava/lang/String;

    new-instance v5, Lc8/yef;

    invoke-direct {v5}, Lc8/yef;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Lc8/sef;->getTemplateById(Ljava/lang/String;Ljava/lang/String;Lc8/yef;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    iget-object v2, p0, Lc8/jef;->layoutFileManager:Lc8/mef;

    invoke-static {v2}, Lc8/mef;->access$400(Lc8/mef;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 137
    .local v0, "n":I
    iget v2, p0, Lc8/jef;->totalDownloadNum:I

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 132
    .end local v0    # "n":I
    :catch_0
    move-exception v1

    .line 133
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "LayoutFileManager"

    const-string/jumbo v3, "Download layout file exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 137
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "n":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 113
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/jef;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "callListener"    # Ljava/lang/Boolean;

    .prologue
    .line 142
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lc8/jef;->listener:Lc8/kef;

    invoke-interface {v0}, Lc8/kef;->onFinished()V

    .line 145
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 113
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/jef;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
