.class public final Lc8/Ohb;
.super Ljava/lang/Object;
.source "CommonUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Shb;->onFailure(Lc8/vgb;Lc8/Mgb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$failureCallback:Lc8/vgb;

.field final synthetic val$message:Lc8/Mgb;


# direct methods
.method constructor <init>(Lc8/vgb;Lc8/Mgb;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lc8/Ohb;->val$failureCallback:Lc8/vgb;

    iput-object p2, p0, Lc8/Ohb;->val$message:Lc8/Mgb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lc8/Ohb;->val$failureCallback:Lc8/vgb;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lc8/Ohb;->val$failureCallback:Lc8/vgb;

    iget-object v1, p0, Lc8/Ohb;->val$message:Lc8/Mgb;

    iget v1, v1, Lc8/Mgb;->code:I

    iget-object v2, p0, Lc8/Ohb;->val$message:Lc8/Mgb;

    iget-object v2, v2, Lc8/Mgb;->message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lc8/vgb;->onFailure(ILjava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method
