.class public Lc8/Sag;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"

# interfaces
.implements Lc8/rbg;


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
    .line 169
    iput-object p1, p0, Lc8/Sag;->this$0:Lc8/abg;

    iput-object p2, p0, Lc8/Sag;->val$text:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    .line 172
    if-eqz p1, :cond_1

    .line 173
    iget-object v1, p0, Lc8/Sag;->this$0:Lc8/abg;

    iget-object v2, p0, Lc8/Sag;->val$text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/abg;->access$502(Lc8/abg;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v1, p0, Lc8/Sag;->val$text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 176
    .local v0, "newValue":Ljava/lang/CharSequence;
    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    .line 177
    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/Sag;->this$0:Lc8/abg;

    invoke-static {v2}, Lc8/abg;->access$500(Lc8/abg;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    iget-object v1, p0, Lc8/Sag;->this$0:Lc8/abg;

    const-string/jumbo v2, "change"

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lc8/abg;->access$600(Lc8/abg;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lc8/Sag;->this$0:Lc8/abg;

    iget-object v2, p0, Lc8/Sag;->val$text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/abg;->access$502(Lc8/abg;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
