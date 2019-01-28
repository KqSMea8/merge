.class public final Lcom/taobao/accs/data/MsgDistribute$1;
.super Ljava/lang/Object;
.source "MsgDistribute.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/data/MsgDistribute;->distribMessage(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/taobao/accs/data/MsgDistribute$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/taobao/accs/data/MsgDistribute$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 62
    invoke-static {}, Lcom/taobao/accs/data/MsgDistribute;->getInstance()Lcom/taobao/accs/data/MsgDistribute;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/data/MsgDistribute$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/accs/data/MsgDistribute$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/data/MsgDistribute;->access$000(Lcom/taobao/accs/data/MsgDistribute;Landroid/content/Context;Landroid/content/Intent;)V

    .line 64
    return-void
.end method
