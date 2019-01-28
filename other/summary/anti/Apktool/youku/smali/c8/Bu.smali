.class public Lc8/Bu;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 1153
    iput-object p1, p0, Lc8/Bu;->this$0:Lc8/Hu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1158
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    .line 1159
    iget-object v1, p0, Lc8/Bu;->this$0:Lc8/Hu;

    iget-object v0, v1, Lc8/Hu;->mDropDownList:Lc8/Bt;

    .line 1161
    .local v0, "dropDownList":Lc8/Bt;
    if-eqz v0, :cond_0

    .line 1162
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/Bt;->setListSelectionHidden(Z)V

    .line 1165
    .end local v0    # "dropDownList":Lc8/Bt;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1169
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
