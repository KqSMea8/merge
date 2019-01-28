.class public Lc8/OMf;
.super Ljava/lang/Object;
.source "RemoteAuth.java"

# interfaces
.implements Lc8/JMf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/PMf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/NMf;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lc8/MMf;)V
    .locals 0
    .param p1, "x0"    # Lc8/MMf;

    .prologue
    .line 60
    invoke-direct {p0}, Lc8/OMf;-><init>()V

    return-void
.end method

.method public static instance()Lc8/OMf;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lc8/NMf;->instance:Lc8/OMf;

    return-object v0
.end method


# virtual methods
.method public onAuthCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string/jumbo v0, "mtopsdk.rb-RemoteAuth"

    const-string/jumbo v1, "auth cancel"

    invoke-static {v0, v1}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string/jumbo v0, "OPEN"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lc8/IMf;->failAllRequest(Lc8/AOp;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public onAuthFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 80
    const-string/jumbo v0, "mtopsdk.rb-RemoteAuth"

    const-string/jumbo v1, "auth fail"

    invoke-static {v0, v1}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string/jumbo v0, "OPEN"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lc8/IMf;->failAllRequest(Lc8/AOp;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public onAuthSuccess()V
    .locals 3

    .prologue
    .line 73
    const-string/jumbo v0, "mtopsdk.rb-RemoteAuth"

    const-string/jumbo v1, "auth success"

    invoke-static {v0, v1}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string/jumbo v0, "OPEN"

    const-string/jumbo v1, "accessToken"

    invoke-static {}, Lc8/PMf;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/rQp;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string/jumbo v0, "OPEN"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    invoke-static {v0}, Lc8/IMf;->retryAllRequest(Lc8/AOp;)V

    .line 76
    return-void
.end method
