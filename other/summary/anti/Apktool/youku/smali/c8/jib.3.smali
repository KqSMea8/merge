.class public Lc8/jib;
.super Ljava/lang/Object;
.source "LoginServiceImpl.java"

# interfaces
.implements Lc8/xgb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/mib;->showQrCodeLogin(Ljava/util/Map;Lc8/xgb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/mib;

.field final synthetic val$loginCallback:Lc8/xgb;

.field final synthetic val$params:Ljava/util/Map;


# direct methods
.method constructor <init>(Lc8/mib;Lc8/xgb;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lc8/mib;

    .prologue
    .line 206
    iput-object p1, p0, Lc8/jib;->this$0:Lc8/mib;

    iput-object p2, p0, Lc8/jib;->val$loginCallback:Lc8/xgb;

    iput-object p3, p0, Lc8/jib;->val$params:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-object v0, p0, Lc8/jib;->this$0:Lc8/mib;

    iget-object v1, p0, Lc8/jib;->val$params:Ljava/util/Map;

    iget-object v2, p0, Lc8/jib;->val$loginCallback:Lc8/xgb;

    invoke-static {v0, v1, v2}, Lc8/mib;->access$100(Lc8/mib;Ljava/util/Map;Lc8/xgb;)V

    .line 217
    return-void
.end method

.method public onSuccess(Lc8/ahb;)V
    .locals 2
    .param p1, "session"    # Lc8/ahb;

    .prologue
    .line 209
    iget-object v0, p0, Lc8/jib;->val$loginCallback:Lc8/xgb;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lc8/jib;->val$loginCallback:Lc8/xgb;

    iget-object v1, p0, Lc8/jib;->this$0:Lc8/mib;

    invoke-virtual {v1}, Lc8/mib;->getSession()Lc8/ahb;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/xgb;->onSuccess(Lc8/ahb;)V

    .line 212
    :cond_0
    return-void
.end method
