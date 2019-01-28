.class public Lc8/iUf;
.super Ljava/lang/Object;
.source "HotPatchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tUf;->loadPatch(Ljava/lang/String;ILjava/lang/String;ZZZ)Z
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
    .line 441
    iput-object p1, p0, Lc8/iUf;->this$0:Lc8/tUf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 444
    iget-object v0, p0, Lc8/iUf;->this$0:Lc8/tUf;

    invoke-static {v0}, Lc8/tUf;->access$300(Lc8/tUf;)Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "\u5df2\u7ecf\u6709Patch\u88ab\u52a0\u8f7d\uff0c\u9700\u8981\u6740\u6389\u8fdb\u7a0b\u91cd\u542f\u5e94\u7528\u5f53\u524dPatch\u624d\u80fd\u751f\u6548"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 445
    return-void
.end method
