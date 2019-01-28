.class public Lc8/rD;
.super Ljava/lang/Object;
.source "WVUCWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/DD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/DD;


# direct methods
.method constructor <init>(Lc8/DD;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lc8/rD;->this$0:Lc8/DD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 199
    iget-object v0, p0, Lc8/rD;->this$0:Lc8/DD;

    invoke-static {v0}, Lc8/DD;->access$000(Lc8/DD;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/rD;->this$0:Lc8/DD;

    invoke-static {v0}, Lc8/DD;->access$000(Lc8/DD;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 200
    iget-object v0, p0, Lc8/rD;->this$0:Lc8/DD;

    invoke-static {v0}, Lc8/DD;->access$000(Lc8/DD;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    :try_start_0
    iget-object v0, p0, Lc8/rD;->this$0:Lc8/DD;

    iget-object v0, v0, Lc8/DD;->context:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/jH;->buildPermissionTask(Landroid/content/Context;[Ljava/lang/String;)Lc8/iH;

    move-result-object v0

    new-instance v1, Lc8/qD;

    invoke-direct {v1, p0}, Lc8/qD;-><init>(Lc8/rD;)V

    invoke-virtual {v0, v1}, Lc8/iH;->setTaskOnPermissionGranted(Ljava/lang/Runnable;)Lc8/iH;

    move-result-object v0

    new-instance v1, Lc8/pD;

    invoke-direct {v1, p0}, Lc8/pD;-><init>(Lc8/rD;)V

    invoke-virtual {v0, v1}, Lc8/iH;->setTaskOnPermissionDenied(Ljava/lang/Runnable;)Lc8/iH;

    move-result-object v0

    invoke-virtual {v0}, Lc8/iH;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/rD;->this$0:Lc8/DD;

    invoke-static {v0}, Lc8/DD;->access$200(Lc8/DD;)Lc8/jI;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lc8/rD;->this$0:Lc8/DD;

    invoke-static {v0}, Lc8/DD;->access$200(Lc8/DD;)Lc8/jI;

    move-result-object v0

    invoke-virtual {v0}, Lc8/jI;->hide()V

    .line 222
    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
