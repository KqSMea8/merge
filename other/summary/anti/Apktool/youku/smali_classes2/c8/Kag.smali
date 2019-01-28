.class public Lc8/Kag;
.super Ljava/lang/Object;
.source "WXAnimationBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Jag;
    }
.end annotation


# static fields
.field public static final NUM_CUBIC_PARAM:I = 0x4


# instance fields
.field public delay:J

.field public duration:J

.field public needLayout:Z

.field public styles:Lc8/Jag;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public timingFunction:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method
