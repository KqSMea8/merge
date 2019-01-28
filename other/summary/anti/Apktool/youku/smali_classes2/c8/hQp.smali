.class public Lc8/hQp;
.super Ljava/lang/Object;
.source "InnerSignImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jQp;->init(Lc8/kOp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jQp;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lc8/jQp;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lc8/hQp;->this$0:Lc8/jQp;

    iput-object p2, p0, Lc8/hQp;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lc8/hQp;->this$0:Lc8/jQp;

    iget-object v1, p0, Lc8/hQp;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lc8/jQp;->access$000(Lc8/jQp;Landroid/content/Context;)Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;

    .line 73
    return-void
.end method
