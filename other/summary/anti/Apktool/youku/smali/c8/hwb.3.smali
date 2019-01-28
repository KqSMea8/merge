.class public Lc8/hwb;
.super Ljava/lang/Object;
.source "WeexPageFragment.java"

# interfaces
.implements Lc8/NUf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/jwb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WXRenderListenerAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needWrapper()Z
    .locals 1

    .prologue
    .line 1008
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Lc8/nVf;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p1, "wxsdkInstance"    # Lc8/nVf;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 980
    return-object p2
.end method

.method public onException(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "wxsdkInstance"    # Lc8/nVf;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;

    .prologue
    .line 1001
    return-void
.end method

.method public onException(Lc8/nVf;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "wxsdkInstance"    # Lc8/nVf;
    .param p2, "shouldDegrade"    # Z
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "s1"    # Ljava/lang/String;

    .prologue
    .line 1005
    return-void
.end method

.method public onRefreshSuccess(Lc8/nVf;II)V
    .locals 0
    .param p1, "wxsdkInstance"    # Lc8/nVf;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 996
    return-void
.end method

.method public onRenderSuccess(Lc8/nVf;II)V
    .locals 0
    .param p1, "wxsdkInstance"    # Lc8/nVf;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 991
    return-void
.end method

.method public onViewCreated(Lc8/nVf;Landroid/view/View;)V
    .locals 0
    .param p1, "wxsdkInstance"    # Lc8/nVf;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 986
    return-void
.end method
