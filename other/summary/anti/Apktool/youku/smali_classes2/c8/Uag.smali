.class public Lc8/Uag;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"

# interfaces
.implements Landroid/text/TextWatcher;


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


# direct methods
.method constructor <init>(Lc8/abg;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lc8/Uag;->this$0:Lc8/abg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 240
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 209
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 214
    iget-object v2, p0, Lc8/Uag;->this$0:Lc8/abg;

    invoke-static {v2}, Lc8/abg;->access$800(Lc8/abg;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, p0, Lc8/Uag;->this$0:Lc8/abg;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lc8/abg;->access$802(Lc8/abg;Z)Z

    .line 218
    :cond_0
    iget-object v2, p0, Lc8/Uag;->this$0:Lc8/abg;

    invoke-static {v2}, Lc8/abg;->access$900(Lc8/abg;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 235
    :cond_1
    :goto_0
    return-void

    .line 222
    :cond_2
    iget-object v2, p0, Lc8/Uag;->this$0:Lc8/abg;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/abg;->access$902(Lc8/abg;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    iget-object v2, p0, Lc8/Uag;->this$0:Lc8/abg;

    invoke-virtual {v2}, Lc8/abg;->getDomObject()Lc8/qYf;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lc8/Uag;->this$0:Lc8/abg;

    invoke-virtual {v2}, Lc8/abg;->getDomObject()Lc8/qYf;

    move-result-object v2

    invoke-interface {v2}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 225
    iget-object v2, p0, Lc8/Uag;->this$0:Lc8/abg;

    invoke-virtual {v2}, Lc8/abg;->getDomObject()Lc8/qYf;

    move-result-object v2

    invoke-interface {v2}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v2

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 226
    .local v0, "val":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "valString":Ljava/lang/String;
    iget-object v2, p0, Lc8/Uag;->this$0:Lc8/abg;

    invoke-static {v2}, Lc8/abg;->access$900(Lc8/abg;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lc8/Uag;->this$0:Lc8/abg;

    invoke-static {v2}, Lc8/abg;->access$900(Lc8/abg;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 232
    .end local v0    # "val":Ljava/lang/Object;
    .end local v1    # "valString":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lc8/Uag;->this$0:Lc8/abg;

    invoke-static {v2}, Lc8/abg;->access$800(Lc8/abg;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 233
    iget-object v2, p0, Lc8/Uag;->this$0:Lc8/abg;

    const-string/jumbo v3, "input"

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lc8/abg;->access$600(Lc8/abg;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
