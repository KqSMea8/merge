.class public Lc8/Bd;
.super Ljava/lang/Object;
.source "FloatingActionButton.java"

# interfaces
.implements Lc8/Sd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gd;->wrapOnVisibilityChangedListener(Lc8/Dd;)Lc8/Sd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Gd;

.field final synthetic val$listener:Lc8/Dd;


# direct methods
.method constructor <init>(Lc8/Gd;Lc8/Dd;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Gd;

    .prologue
    .line 420
    iput-object p1, p0, Lc8/Bd;->this$0:Lc8/Gd;

    iput-object p2, p0, Lc8/Bd;->val$listener:Lc8/Dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidden()V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lc8/Bd;->val$listener:Lc8/Dd;

    iget-object v1, p0, Lc8/Bd;->this$0:Lc8/Gd;

    invoke-virtual {v0, v1}, Lc8/Dd;->onHidden(Lc8/Gd;)V

    .line 429
    return-void
.end method

.method public onShown()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lc8/Bd;->val$listener:Lc8/Dd;

    iget-object v1, p0, Lc8/Bd;->this$0:Lc8/Gd;

    invoke-virtual {v0, v1}, Lc8/Dd;->onShown(Lc8/Gd;)V

    .line 424
    return-void
.end method
