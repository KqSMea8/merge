.class public Lc8/lw;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/zw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/zw;


# direct methods
.method constructor <init>(Lc8/zw;)V
    .locals 0
    .param p1, "this$0"    # Lc8/zw;

    .prologue
    .line 206
    iput-object p1, p0, Lc8/lw;->this$0:Lc8/zw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lc8/lw;->this$0:Lc8/zw;

    iget-object v0, v0, Lc8/zw;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/lw;->this$0:Lc8/zw;

    iget-object v0, v0, Lc8/zw;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    instance-of v0, v0, Lc8/Sw;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lc8/lw;->this$0:Lc8/zw;

    iget-object v0, v0, Lc8/zw;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 212
    :cond_0
    return-void
.end method
