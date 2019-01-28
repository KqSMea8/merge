.class public Lc8/Au;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Hu;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Hu;


# direct methods
.method constructor <init>(Lc8/Hu;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Hu;

    .prologue
    .line 1134
    iput-object p1, p0, Lc8/Au;->this$0:Lc8/Hu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1138
    iget-object v1, p0, Lc8/Au;->this$0:Lc8/Hu;

    invoke-virtual {v1}, Lc8/Hu;->getAnchorView()Landroid/view/View;

    move-result-object v0

    .line 1139
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1140
    iget-object v1, p0, Lc8/Au;->this$0:Lc8/Hu;

    invoke-virtual {v1}, Lc8/Hu;->show()V

    .line 1142
    :cond_0
    return-void
.end method
