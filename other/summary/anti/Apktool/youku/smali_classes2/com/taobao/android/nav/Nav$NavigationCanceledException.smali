.class public Lcom/taobao/android/nav/Nav$NavigationCanceledException;
.super Ljava/lang/Exception;
.source "Nav.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ybf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NavigationCanceledException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x459960cc6de9e370L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 157
    return-void
.end method
