.class public Lc8/ZI;
.super Ljava/lang/Object;
.source "SessionCenter.java"

# interfaces
.implements Lc8/vL;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/SessionCenter;-><init>(Lc8/RI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanet/channel/SessionCenter;

.field final synthetic val$appkey:Ljava/lang/String;

.field final synthetic val$iSecurity:Lc8/gK;


# direct methods
.method public constructor <init>(Lanet/channel/SessionCenter;Ljava/lang/String;Lc8/gK;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 128
    iput-object p1, p0, Lc8/ZI;->this$0:Lanet/channel/SessionCenter;

    iput-object p2, p0, Lc8/ZI;->val$appkey:Ljava/lang/String;

    iput-object p3, p0, Lc8/ZI;->val$iSecurity:Lc8/gK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lc8/ZI;->val$appkey:Ljava/lang/String;

    return-object v0
.end method

.method public sign(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v0, p0, Lc8/ZI;->val$iSecurity:Lc8/gK;

    iget-object v1, p0, Lc8/ZI;->this$0:Lanet/channel/SessionCenter;

    iget-object v1, v1, Lanet/channel/SessionCenter;->context:Landroid/content/Context;

    const-string/jumbo v2, "HMAC_SHA1"

    invoke-virtual {p0}, Lc8/ZI;->getAppkey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, p1}, Lc8/gK;->sign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useSecurityGuard()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lc8/ZI;->val$iSecurity:Lc8/gK;

    invoke-interface {v0}, Lc8/gK;->isSecOff()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
