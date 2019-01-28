.class public final Lc8/OGo;
.super Ljava/lang/Object;
.source "VipToastUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/QGo;->initToast(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lc8/OGo;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 24
    iget-object v0, p0, Lc8/OGo;->val$context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lc8/OGo;->val$context:Landroid/content/Context;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lc8/QGo;->access$002(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 27
    :cond_0
    return-void
.end method
