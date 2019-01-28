.class public Lc8/fs;
.super Landroid/database/DataSetObserver;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/js;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    .line 269
    iput-object p1, p0, Lc8/fs;->this$0:Lc8/js;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 273
    iget-object v0, p0, Lc8/fs;->this$0:Lc8/js;

    invoke-virtual {v0}, Lc8/js;->updateAppearance()V

    .line 274
    return-void
.end method
