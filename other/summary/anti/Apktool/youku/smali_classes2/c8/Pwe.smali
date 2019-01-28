.class public Lc8/Pwe;
.super Ljava/lang/Object;
.source "WbAppInfo.java"


# instance fields
.field private authActivityName:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private supportVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string/jumbo v0, "com.sina.weibo"

    iput-object v0, p0, Lc8/Pwe;->packageName:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, "com.sina.weibo.SSOActivity"

    iput-object v0, p0, Lc8/Pwe;->authActivityName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAuthActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lc8/Pwe;->authActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lc8/Pwe;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportVersion()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lc8/Pwe;->supportVersion:I

    return v0
.end method

.method public isLegal()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lc8/Pwe;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lc8/Pwe;->supportVersion:I

    if-lez v0, :cond_0

    .line 45
    const/4 v0, 0x1

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAuthActivityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "authActivityName"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lc8/Pwe;->authActivityName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lc8/Pwe;->packageName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setSupportVersion(I)V
    .locals 0
    .param p1, "supportVersion"    # I

    .prologue
    .line 40
    iput p1, p0, Lc8/Pwe;->supportVersion:I

    .line 41
    return-void
.end method
