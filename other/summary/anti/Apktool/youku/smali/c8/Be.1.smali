.class public Lc8/Be;
.super Landroid/database/DataSetObserver;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PagerAdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ke;


# direct methods
.method constructor <init>(Lc8/Ke;)V
    .locals 0

    .prologue
    .line 2206
    iput-object p1, p0, Lc8/Be;->this$0:Lc8/Ke;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 2207
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2211
    iget-object v0, p0, Lc8/Be;->this$0:Lc8/Ke;

    invoke-virtual {v0}, Lc8/Ke;->populateFromPagerAdapter()V

    .line 2212
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2216
    iget-object v0, p0, Lc8/Be;->this$0:Lc8/Ke;

    invoke-virtual {v0}, Lc8/Ke;->populateFromPagerAdapter()V

    .line 2217
    return-void
.end method
