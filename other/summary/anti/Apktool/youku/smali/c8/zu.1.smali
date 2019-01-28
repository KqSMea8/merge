.class public Lc8/zu;
.super Lc8/Kt;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Hu;->createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Hu;


# direct methods
.method constructor <init>(Lc8/Hu;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Hu;
    .param p2, "src"    # Landroid/view/View;

    .prologue
    .line 1107
    iput-object p1, p0, Lc8/zu;->this$0:Lc8/Hu;

    invoke-direct {p0, p2}, Lc8/Kt;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lc8/Hu;
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lc8/zu;->this$0:Lc8/Hu;

    return-object v0
.end method

.method public bridge synthetic getPopup()Lc8/mr;
    .locals 1

    .prologue
    .line 1107
    invoke-virtual {p0}, Lc8/zu;->getPopup()Lc8/Hu;

    move-result-object v0

    return-object v0
.end method
