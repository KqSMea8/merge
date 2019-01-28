.class public Lc8/JEn;
.super Landroid/support/v4/app/Fragment;
.source "YoukuFragment.java"

# interfaces
.implements Lc8/Cfh;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lc8/JEn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lc8/JEn;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method
