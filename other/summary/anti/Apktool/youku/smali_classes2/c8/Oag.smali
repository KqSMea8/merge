.class public Lc8/Oag;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/abg;->addEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private handled:Z

.field final synthetic this$0:Lc8/abg;


# direct methods
.method constructor <init>(Lc8/abg;)V
    .locals 1

    .prologue
    .line 701
    iput-object p1, p0, Lc8/Oag;->this$0:Lc8/abg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 702
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Oag;->handled:Z

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 706
    iget-object v2, p0, Lc8/Oag;->this$0:Lc8/abg;

    invoke-static {v2}, Lc8/abg;->access$1200(Lc8/abg;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView$OnEditorActionListener;

    .line 707
    .local v1, "l":Landroid/widget/TextView$OnEditorActionListener;
    if-eqz v1, :cond_0

    .line 708
    iget-boolean v2, p0, Lc8/Oag;->handled:Z

    invoke-interface {v1, p1, p2, p3}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v3

    and-int/2addr v2, v3

    iput-boolean v2, p0, Lc8/Oag;->handled:Z

    goto :goto_0

    .line 711
    .end local v1    # "l":Landroid/widget/TextView$OnEditorActionListener;
    :cond_1
    iget-boolean v2, p0, Lc8/Oag;->handled:Z

    return v2
.end method
