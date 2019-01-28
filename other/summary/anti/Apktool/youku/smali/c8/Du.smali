.class public Lc8/Du;
.super Landroid/database/DataSetObserver;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Hu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Hu;


# direct methods
.method constructor <init>(Lc8/Hu;)V
    .locals 0

    .prologue
    .line 1300
    iput-object p1, p0, Lc8/Du;->this$0:Lc8/Hu;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 1301
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 1305
    iget-object v0, p0, Lc8/Du;->this$0:Lc8/Hu;

    invoke-virtual {v0}, Lc8/Hu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1307
    iget-object v0, p0, Lc8/Du;->this$0:Lc8/Hu;

    invoke-virtual {v0}, Lc8/Hu;->show()V

    .line 1309
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 1313
    iget-object v0, p0, Lc8/Du;->this$0:Lc8/Hu;

    invoke-virtual {v0}, Lc8/Hu;->dismiss()V

    .line 1314
    return-void
.end method
