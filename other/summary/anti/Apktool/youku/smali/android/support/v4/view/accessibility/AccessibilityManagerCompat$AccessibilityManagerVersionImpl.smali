.class public interface abstract Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AccessibilityManagerVersionImpl"
.end annotation


# virtual methods
.method public abstract addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Lc8/Bm;)Z
.end method

.method public abstract addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Lc8/Cm;)Z
.end method

.method public abstract getEnabledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityManager;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstalledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z
.end method

.method public abstract newAccessibilityStateChangeListener(Lc8/Bm;)Lc8/Dm;
.end method

.method public abstract newTouchExplorationStateChangeListener(Lc8/Cm;)Lc8/Gm;
.end method

.method public abstract removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Lc8/Bm;)Z
.end method

.method public abstract removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Lc8/Cm;)Z
.end method
