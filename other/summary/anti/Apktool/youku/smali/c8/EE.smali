.class public Lc8/EE;
.super Ljava/lang/Object;
.source "WVCamera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/HE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/HE;


# direct methods
.method constructor <init>(Lc8/HE;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lc8/EE;->this$0:Lc8/HE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 226
    iget-object v0, p0, Lc8/EE;->this$0:Lc8/HE;

    invoke-static {v0}, Lc8/HE;->access$100(Lc8/HE;)Lc8/jI;

    move-result-object v0

    invoke-virtual {v0}, Lc8/jI;->hide()V

    .line 227
    iget-object v0, p0, Lc8/EE;->this$0:Lc8/HE;

    invoke-static {v0}, Lc8/HE;->access$200(Lc8/HE;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lc8/EE;->this$0:Lc8/HE;

    invoke-static {v0}, Lc8/HE;->access$300(Lc8/HE;)V

    .line 236
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lc8/EE;->this$0:Lc8/HE;

    invoke-static {v0}, Lc8/HE;->access$200(Lc8/HE;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lc8/EE;->this$0:Lc8/HE;

    invoke-static {v0}, Lc8/HE;->access$400(Lc8/HE;)V

    goto :goto_0

    .line 234
    :cond_1
    const-string/jumbo v0, "WVCamera"

    const-string/jumbo v1, "take photo cancel, and callback."

    invoke-static {v0, v1}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lc8/EE;->this$0:Lc8/HE;

    invoke-static {v0}, Lc8/HE;->access$500(Lc8/HE;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v0

    new-instance v1, Lc8/kE;

    invoke-direct {v1}, Lc8/kE;-><init>()V

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0
.end method
