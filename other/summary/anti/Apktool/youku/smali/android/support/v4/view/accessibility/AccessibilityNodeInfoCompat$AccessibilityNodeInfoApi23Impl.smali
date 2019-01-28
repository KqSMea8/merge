.class public Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi23Impl;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi22Impl;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityNodeInfoApi23Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 2267
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi22Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionContextClick()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2300
    invoke-static {}, Lc8/Km;->getActionContextClick()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getActionScrollDown()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2285
    invoke-static {}, Lc8/Km;->getActionScrollDown()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getActionScrollLeft()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2290
    invoke-static {}, Lc8/Km;->getActionScrollLeft()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getActionScrollRight()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2295
    invoke-static {}, Lc8/Km;->getActionScrollRight()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getActionScrollToPosition()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2270
    invoke-static {}, Lc8/Km;->getActionScrollToPosition()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getActionScrollUp()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2280
    invoke-static {}, Lc8/Km;->getActionScrollUp()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getActionShowOnScreen()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2275
    invoke-static {}, Lc8/Km;->getActionShowOnScreen()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isContextClickable(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 2305
    invoke-static {p1}, Lc8/Km;->isContextClickable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setContextClickable(Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "contextClickable"    # Z

    .prologue
    .line 2310
    invoke-static {p1, p2}, Lc8/Km;->setContextClickable(Ljava/lang/Object;Z)V

    .line 2311
    return-void
.end method
