.class public Lc8/cs;
.super Landroid/database/DataSetObserver;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/js;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/js;


# direct methods
.method constructor <init>(Lc8/js;)V
    .locals 0
    .param p1, "this$0"    # Lc8/js;

    .prologue
    .line 129
    iput-object p1, p0, Lc8/cs;->this$0:Lc8/js;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 134
    iget-object v0, p0, Lc8/cs;->this$0:Lc8/js;

    iget-object v0, v0, Lc8/js;->mAdapter:Lc8/gs;

    invoke-virtual {v0}, Lc8/gs;->notifyDataSetChanged()V

    .line 135
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 139
    iget-object v0, p0, Lc8/cs;->this$0:Lc8/js;

    iget-object v0, v0, Lc8/js;->mAdapter:Lc8/gs;

    invoke-virtual {v0}, Lc8/gs;->notifyDataSetInvalidated()V

    .line 140
    return-void
.end method
