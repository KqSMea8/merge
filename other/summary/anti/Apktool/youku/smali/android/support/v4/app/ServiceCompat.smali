.class public final Landroid/support/v4/app/ServiceCompat;
.super Ljava/lang/Object;
.source "ServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ji;,
        Lc8/Ki;,
        Lc8/Li;,
        Lc8/Mi;
    }
.end annotation


# static fields
.field static final IMPL:Lc8/Li;

.field public static final START_STICKY:I = 0x1

.field public static final STOP_FOREGROUND_DETACH:I = 0x2

.field public static final STOP_FOREGROUND_REMOVE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lc8/zl;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Lc8/Ji;

    invoke-direct {v0}, Lc8/Ji;-><init>()V

    sput-object v0, Landroid/support/v4/app/ServiceCompat;->IMPL:Lc8/Li;

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v0, Lc8/Ki;

    invoke-direct {v0}, Lc8/Ki;-><init>()V

    sput-object v0, Landroid/support/v4/app/ServiceCompat;->IMPL:Lc8/Li;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static stopForeground(Landroid/app/Service;I)V
    .locals 1
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "flags"    # I

    .prologue
    .line 123
    sget-object v0, Landroid/support/v4/app/ServiceCompat;->IMPL:Lc8/Li;

    invoke-interface {v0, p0, p1}, Lc8/Li;->stopForeground(Landroid/app/Service;I)V

    .line 124
    return-void
.end method
