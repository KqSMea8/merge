.class public Lc8/rz;
.super Ljava/lang/Object;
.source "InstrumentationHook.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/atlas/runtime/InstrumentationHook;->asyncStartActivity(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ILjava/lang/String;Lc8/sz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/atlas/runtime/InstrumentationHook;

.field final synthetic val$failedTask:Lc8/Uy;

.field final synthetic val$successTask:Lc8/Uy;


# direct methods
.method public constructor <init>(Landroid/taobao/atlas/runtime/InstrumentationHook;Lc8/Uy;Lc8/Uy;)V
    .locals 0
    .param p1, "this$0"    # Landroid/taobao/atlas/runtime/InstrumentationHook;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 502
    iput-object p1, p0, Lc8/rz;->this$0:Landroid/taobao/atlas/runtime/InstrumentationHook;

    iput-object p2, p0, Lc8/rz;->val$successTask:Lc8/Uy;

    iput-object p3, p0, Lc8/rz;->val$failedTask:Lc8/Uy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 505
    iget-object v0, p0, Lc8/rz;->val$successTask:Lc8/Uy;

    invoke-virtual {v0}, Lc8/Uy;->cancel()V

    .line 506
    iget-object v0, p0, Lc8/rz;->val$failedTask:Lc8/Uy;

    invoke-virtual {v0}, Lc8/Uy;->cancel()V

    .line 507
    return-void
.end method
