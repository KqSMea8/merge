.class public interface abstract Lc8/Abo;
.super Ljava/lang/Object;
.source "IStateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/zbo;
    }
.end annotation


# static fields
.field public static final STATE_EMPTY:I = 0x2

.field public static final STATE_ERROR:I = 0x1

.field public static final STATE_LOADING:I = 0x4

.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_NO_NET:I = 0x3


# virtual methods
.method public abstract attachListener(Lc8/zbo;)V
.end method

.method public abstract hideView()V
.end method

.method public abstract onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public abstract showEmptyView()V
.end method

.method public abstract showErrorView(Ljava/lang/Throwable;)V
.end method

.method public abstract showLoadingView()V
.end method

.method public abstract showNoConnectView()V
.end method
