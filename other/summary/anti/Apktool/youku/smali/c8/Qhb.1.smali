.class public final Lc8/Qhb;
.super Ljava/lang/Object;
.source "CommonUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Shb;->onFailure(Lc8/vgb;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$failureCallback:Lc8/vgb;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lc8/vgb;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lc8/Qhb;->val$failureCallback:Lc8/vgb;

    iput p2, p0, Lc8/Qhb;->val$resultCode:I

    iput-object p3, p0, Lc8/Qhb;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lc8/Qhb;->val$failureCallback:Lc8/vgb;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lc8/Qhb;->val$failureCallback:Lc8/vgb;

    iget v1, p0, Lc8/Qhb;->val$resultCode:I

    iget-object v2, p0, Lc8/Qhb;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lc8/vgb;->onFailure(ILjava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method
