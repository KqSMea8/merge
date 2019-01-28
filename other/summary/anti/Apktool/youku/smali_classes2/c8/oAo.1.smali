.class public Lc8/oAo;
.super Ljava/lang/Object;
.source "VipPayAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/pAo;->setVip(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/pAo;

.field final synthetic val$isVip:Z


# direct methods
.method constructor <init>(Lc8/pAo;Z)V
    .locals 0
    .param p1, "this$0"    # Lc8/pAo;

    .prologue
    .line 218
    iput-object p1, p0, Lc8/oAo;->this$0:Lc8/pAo;

    iput-boolean p2, p0, Lc8/oAo;->val$isVip:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lc8/oAo;->this$0:Lc8/pAo;

    iget-object v0, v0, Lc8/pAo;->val$vipListener:Lc8/kAo;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lc8/oAo;->this$0:Lc8/pAo;

    iget-object v0, v0, Lc8/pAo;->val$vipListener:Lc8/kAo;

    iget-boolean v1, p0, Lc8/oAo;->val$isVip:Z

    invoke-interface {v0, v1}, Lc8/kAo;->setVip(Z)V

    .line 224
    :cond_0
    return-void
.end method
