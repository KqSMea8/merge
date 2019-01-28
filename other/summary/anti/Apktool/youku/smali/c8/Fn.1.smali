.class public Lc8/Fn;
.super Landroid/widget/CursorAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Jn;->createListView(Lc8/Nn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final mIsCheckedIndex:I

.field private final mLabelIndex:I

.field final synthetic this$0:Lc8/Jn;

.field final synthetic val$dialog:Lc8/Nn;

.field final synthetic val$listView:Lc8/Mn;


# direct methods
.method constructor <init>(Lc8/Jn;Landroid/content/Context;Landroid/database/Cursor;ZLc8/Mn;Lc8/Nn;)V
    .locals 2
    .param p1, "this$0"    # Lc8/Jn;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/database/Cursor;
    .param p4, "x2"    # Z

    .prologue
    .line 986
    iput-object p1, p0, Lc8/Fn;->this$0:Lc8/Jn;

    iput-object p5, p0, Lc8/Fn;->val$listView:Lc8/Mn;

    iput-object p6, p0, Lc8/Fn;->val$dialog:Lc8/Nn;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 991
    invoke-virtual {p0}, Lc8/Fn;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 992
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lc8/Fn;->this$0:Lc8/Jn;

    iget-object v1, v1, Lc8/Jn;->mLabelColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lc8/Fn;->mLabelIndex:I

    .line 993
    iget-object v1, p0, Lc8/Fn;->this$0:Lc8/Jn;

    iget-object v1, v1, Lc8/Jn;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lc8/Fn;->mIsCheckedIndex:I

    .line 994
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x1

    .line 998
    const v2, 0x1020014

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 1000
    .local v0, "text":Landroid/widget/CheckedTextView;
    iget v2, p0, Lc8/Fn;->mLabelIndex:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1001
    iget-object v2, p0, Lc8/Fn;->val$listView:Lc8/Mn;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    iget v4, p0, Lc8/Fn;->mIsCheckedIndex:I

    .line 1002
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 1001
    :goto_0
    invoke-virtual {v2, v3, v1}, Lc8/Mn;->setItemChecked(IZ)V

    .line 1003
    return-void

    .line 1002
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1007
    iget-object v0, p0, Lc8/Fn;->this$0:Lc8/Jn;

    iget-object v0, v0, Lc8/Jn;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lc8/Fn;->val$dialog:Lc8/Nn;

    iget v1, v1, Lc8/Nn;->mMultiChoiceItemLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
