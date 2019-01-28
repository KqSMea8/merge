.class public Lc8/Xvb;
.super Ljava/lang/Object;
.source "ConfiguredWeexPageFragment.java"

# interfaces
.implements Lc8/pvb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Yvb;-><init>(Lc8/awb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Yvb;

.field final synthetic val$this$0:Lc8/awb;


# direct methods
.method constructor <init>(Lc8/Yvb;Lc8/awb;)V
    .locals 0
    .param p1, "this$1"    # Lc8/Yvb;

    .prologue
    .line 234
    iput-object p1, p0, Lc8/Xvb;->this$1:Lc8/Yvb;

    iput-object p2, p0, Lc8/Xvb;->val$this$0:Lc8/awb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;)Lc8/nVf;
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 238
    iget-object v1, p0, Lc8/Xvb;->this$1:Lc8/Yvb;

    iget-object v1, v1, Lc8/Yvb;->this$0:Lc8/awb;

    invoke-virtual {v1, p1}, Lc8/awb;->createWXSDKInstance(Landroid/content/Context;)Lc8/nVf;

    move-result-object v0

    .line 239
    .local v0, "instance":Lc8/nVf;
    if-nez v0, :cond_0

    new-instance v0, Lc8/Cob;

    .end local v0    # "instance":Lc8/nVf;
    invoke-direct {v0, p1}, Lc8/Cob;-><init>(Landroid/content/Context;)V

    :cond_0
    return-object v0
.end method
