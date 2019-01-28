.class public Lc8/Nfb;
.super Ljava/lang/Object;
.source "AccountLinkComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ofb;->onSuccess(Lc8/ahb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Ofb;

.field final synthetic val$session:Lc8/ahb;


# direct methods
.method constructor <init>(Lc8/Ofb;Lc8/ahb;)V
    .locals 0
    .param p1, "this$1"    # Lc8/Ofb;

    .prologue
    .line 119
    iput-object p1, p0, Lc8/Nfb;->this$1:Lc8/Ofb;

    iput-object p2, p0, Lc8/Nfb;->val$session:Lc8/ahb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lc8/mjb;->loginCallback:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lc8/mjb;->loginCallback:Ljava/lang/Object;

    check-cast v0, Lc8/xgb;

    iget-object v1, p0, Lc8/Nfb;->val$session:Lc8/ahb;

    invoke-interface {v0, v1}, Lc8/xgb;->onSuccess(Lc8/ahb;)V

    .line 126
    :cond_0
    sget-object v0, Lc8/mjb;->mGlobalLoginCallback:Lc8/xgb;

    if-eqz v0, :cond_1

    .line 127
    sget-object v0, Lc8/mjb;->mGlobalLoginCallback:Lc8/xgb;

    iget-object v1, p0, Lc8/Nfb;->val$session:Lc8/ahb;

    invoke-interface {v0, v1}, Lc8/xgb;->onSuccess(Lc8/ahb;)V

    .line 129
    :cond_1
    return-void
.end method
