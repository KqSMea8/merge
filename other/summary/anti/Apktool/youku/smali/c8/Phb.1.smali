.class public final Lc8/Phb;
.super Ljava/lang/Object;
.source "CommonUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Shb;->onFailure(Lc8/vgb;Lc8/Wgb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$failureCallback:Lc8/vgb;

.field final synthetic val$resultCode:Lc8/Wgb;


# direct methods
.method constructor <init>(Lc8/vgb;Lc8/Wgb;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lc8/Phb;->val$failureCallback:Lc8/vgb;

    iput-object p2, p0, Lc8/Phb;->val$resultCode:Lc8/Wgb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lc8/Phb;->val$failureCallback:Lc8/vgb;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lc8/Phb;->val$failureCallback:Lc8/vgb;

    iget-object v1, p0, Lc8/Phb;->val$resultCode:Lc8/Wgb;

    iget v1, v1, Lc8/Wgb;->code:I

    iget-object v2, p0, Lc8/Phb;->val$resultCode:Lc8/Wgb;

    iget-object v2, v2, Lc8/Wgb;->message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lc8/vgb;->onFailure(ILjava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method
