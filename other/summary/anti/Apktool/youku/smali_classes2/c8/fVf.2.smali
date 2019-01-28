.class public Lc8/fVf;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nVf;->onRefreshSuccess(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/nVf;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lc8/nVf;II)V
    .locals 0

    .prologue
    .line 1088
    iput-object p1, p0, Lc8/fVf;->this$0:Lc8/nVf;

    iput p2, p0, Lc8/fVf;->val$width:I

    iput p3, p0, Lc8/fVf;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1092
    iget-object v0, p0, Lc8/fVf;->this$0:Lc8/nVf;

    invoke-static {v0}, Lc8/nVf;->access$300(Lc8/nVf;)Lc8/NUf;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/fVf;->this$0:Lc8/nVf;

    iget-object v0, v0, Lc8/nVf;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lc8/fVf;->this$0:Lc8/nVf;

    invoke-static {v0}, Lc8/nVf;->access$300(Lc8/nVf;)Lc8/NUf;

    move-result-object v0

    iget-object v1, p0, Lc8/fVf;->this$0:Lc8/nVf;

    iget v2, p0, Lc8/fVf;->val$width:I

    iget v3, p0, Lc8/fVf;->val$height:I

    invoke-interface {v0, v1, v2, v3}, Lc8/NUf;->onRefreshSuccess(Lc8/nVf;II)V

    .line 1095
    :cond_0
    return-void
.end method
