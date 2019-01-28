.class public Lc8/fUf;
.super Ljava/lang/Object;
.source "HotPatchDownloaderListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/hUf;->onDownloadFinish(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/hUf;


# direct methods
.method constructor <init>(Lc8/hUf;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lc8/fUf;->this$0:Lc8/hUf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lc8/fUf;->this$0:Lc8/hUf;

    invoke-static {v0}, Lc8/hUf;->access$000(Lc8/hUf;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "Patch \u5305\u4e0b\u8f7d\u5b8c\u6bd5\uff0c\u51c6\u5907\u52a0\u8f7d\uff01"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 76
    return-void
.end method
