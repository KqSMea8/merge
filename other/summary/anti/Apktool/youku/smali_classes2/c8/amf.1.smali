.class public Lc8/amf;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/bmf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Build"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/taobao/downloader/api/Request$Network;

.field private c:Z

.field private d:Lc8/umf;

.field private e:Lc8/Amf;

.field private f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lc8/xmf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Lc8/omf;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    const-string/jumbo v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    sget-object v0, Lc8/omf;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/amf;->a:Ljava/lang/String;

    .line 62
    :cond_1
    iget-object v0, p0, Lc8/amf;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    sget-object v0, Lc8/omf;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/amf;->a:Ljava/lang/String;

    .line 66
    :cond_2
    sget-object v0, Lcom/taobao/downloader/api/Request$Network;->MOBILE:Lcom/taobao/downloader/api/Request$Network;

    iput-object v0, p0, Lc8/amf;->b:Lcom/taobao/downloader/api/Request$Network;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/amf;->c:Z

    .line 68
    new-instance v0, Lc8/rmf;

    invoke-direct {v0}, Lc8/rmf;-><init>()V

    iput-object v0, p0, Lc8/amf;->d:Lc8/umf;

    .line 69
    new-instance v0, Lc8/nmf;

    invoke-direct {v0}, Lc8/nmf;-><init>()V

    iput-object v0, p0, Lc8/amf;->e:Lc8/Amf;

    .line 70
    const-class v0, Lc8/lmf;

    iput-object v0, p0, Lc8/amf;->f:Ljava/lang/Class;

    .line 76
    return-void
.end method


# virtual methods
.method public build()Lc8/bmf;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Lc8/bmf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/bmf;-><init>(Lc8/Zlf;)V

    .line 156
    iget-object v1, p0, Lc8/amf;->a:Ljava/lang/String;

    iput-object v1, v0, Lc8/bmf;->a:Ljava/lang/String;

    .line 157
    iget-object v1, p0, Lc8/amf;->b:Lcom/taobao/downloader/api/Request$Network;

    iput-object v1, v0, Lc8/bmf;->b:Lcom/taobao/downloader/api/Request$Network;

    .line 158
    iget-boolean v1, p0, Lc8/amf;->c:Z

    iput-boolean v1, v0, Lc8/bmf;->c:Z

    .line 159
    iget-object v1, p0, Lc8/amf;->d:Lc8/umf;

    iput-object v1, v0, Lc8/bmf;->d:Lc8/umf;

    .line 160
    iget-object v1, p0, Lc8/amf;->e:Lc8/Amf;

    iput-object v1, v0, Lc8/bmf;->e:Lc8/Amf;

    .line 161
    iget-object v1, p0, Lc8/amf;->f:Ljava/lang/Class;

    iput-object v1, v0, Lc8/bmf;->f:Ljava/lang/Class;

    .line 162
    return-object v0
.end method

.method public setAutoResumeLimitReq(Z)Lc8/amf;
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lc8/amf;->c:Z

    .line 99
    return-object p0
.end method

.method public setCachePath(Ljava/lang/String;)Lc8/amf;
    .locals 1

    .prologue
    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iput-object p1, p0, Lc8/amf;->a:Ljava/lang/String;

    .line 88
    :cond_0
    return-object p0
.end method

.method public setFileNameGenerator(Lc8/umf;)Lc8/amf;
    .locals 0

    .prologue
    .line 122
    if-eqz p1, :cond_0

    .line 123
    iput-object p1, p0, Lc8/amf;->d:Lc8/umf;

    .line 125
    :cond_0
    return-object p0
.end method

.method public setNetwork(Lcom/taobao/downloader/api/Request$Network;)Lc8/amf;
    .locals 0

    .prologue
    .line 109
    if-eqz p1, :cond_0

    .line 110
    iput-object p1, p0, Lc8/amf;->b:Lcom/taobao/downloader/api/Request$Network;

    .line 112
    :cond_0
    return-object p0
.end method

.method public setNetworkConnection(Ljava/lang/Class;)Lc8/amf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lc8/xmf;",
            ">;)",
            "Lc8/amf;"
        }
    .end annotation

    .prologue
    .line 151
    return-object p0
.end method

.method public setRetryPolicy(Lc8/Amf;)Lc8/amf;
    .locals 0

    .prologue
    .line 135
    if-eqz p1, :cond_0

    .line 136
    iput-object p1, p0, Lc8/amf;->e:Lc8/Amf;

    .line 138
    :cond_0
    return-object p0
.end method
