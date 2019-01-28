.class public Lc8/Tag;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/abg;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/abg;

.field final synthetic val$text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lc8/abg;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lc8/Tag;->this$0:Lc8/abg;

    iput-object p2, p0, Lc8/Tag;->val$text:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 188
    iget-object v1, p0, Lc8/Tag;->this$0:Lc8/abg;

    invoke-static {v1}, Lc8/abg;->access$700(Lc8/abg;)I

    move-result v1

    if-ne p2, v1, :cond_3

    .line 189
    iget-object v1, p0, Lc8/Tag;->val$text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 190
    .local v0, "newValue":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 191
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/Tag;->this$0:Lc8/abg;

    invoke-static {v2}, Lc8/abg;->access$500(Lc8/abg;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    iget-object v1, p0, Lc8/Tag;->this$0:Lc8/abg;

    const-string/jumbo v2, "change"

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lc8/abg;->access$600(Lc8/abg;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lc8/Tag;->this$0:Lc8/abg;

    iget-object v2, p0, Lc8/Tag;->val$text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/abg;->access$502(Lc8/abg;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    :cond_1
    iget-object v1, p0, Lc8/Tag;->this$0:Lc8/abg;

    invoke-virtual {v1}, Lc8/abg;->getParent()Lc8/scg;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 196
    iget-object v1, p0, Lc8/Tag;->this$0:Lc8/abg;

    invoke-virtual {v1}, Lc8/abg;->getParent()Lc8/scg;

    move-result-object v1

    invoke-virtual {v1}, Lc8/scg;->interceptFocus()V

    .line 198
    :cond_2
    iget-object v1, p0, Lc8/Tag;->this$0:Lc8/abg;

    invoke-static {v1}, Lc8/abg;->access$200(Lc8/abg;)V

    .line 199
    const/4 v1, 0x1

    .line 201
    .end local v0    # "newValue":Ljava/lang/CharSequence;
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method
