.class public Lc8/cr;
.super Lc8/ar;
.source "MenuItemWrapperJB.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation build Lc8/N;
    value = 0x10
.end annotation

.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/br;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "object"    # Landroid/support/v4/internal/view/SupportMenuItem;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lc8/ar;-><init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)V

    .line 41
    return-void
.end method


# virtual methods
.method createActionProviderWrapper(Landroid/view/ActionProvider;)Lc8/Wq;
    .locals 2
    .param p1, "provider"    # Landroid/view/ActionProvider;

    .prologue
    .line 45
    new-instance v0, Lc8/br;

    iget-object v1, p0, Lc8/cr;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lc8/br;-><init>(Lc8/cr;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-object v0
.end method
