.class public Lc8/Me;
.super Ljava/lang/Object;
.source "TextInputLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Te;->setEditText(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Te;


# direct methods
.method constructor <init>(Lc8/Te;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Te;

    .prologue
    .line 343
    iput-object p1, p0, Lc8/Me;->this$0:Lc8/Te;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 346
    iget-object v1, p0, Lc8/Me;->this$0:Lc8/Te;

    iget-object v0, p0, Lc8/Me;->this$0:Lc8/Te;

    invoke-static {v0}, Lc8/Te;->access$000(Lc8/Te;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lc8/Te;->updateLabelState(Z)V

    .line 347
    iget-object v0, p0, Lc8/Me;->this$0:Lc8/Te;

    iget-boolean v0, v0, Lc8/Te;->mCounterEnabled:Z

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lc8/Me;->this$0:Lc8/Te;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lc8/Te;->updateCounter(I)V

    .line 350
    :cond_0
    return-void

    .line 346
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 353
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 356
    return-void
.end method
