.class public Lc8/mUf;
.super Ljava/lang/Object;
.source "HotPatchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tUf;->downloadPatch(Lc8/EUf;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/tUf;


# direct methods
.method constructor <init>(Lc8/tUf;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lc8/mUf;->this$0:Lc8/tUf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 659
    iget-object v0, p0, Lc8/mUf;->this$0:Lc8/tUf;

    invoke-static {v0}, Lc8/tUf;->access$300(Lc8/tUf;)Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "patch \u5305\u5f00\u59cb\u4e0b\u8f7d....."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 660
    return-void
.end method
