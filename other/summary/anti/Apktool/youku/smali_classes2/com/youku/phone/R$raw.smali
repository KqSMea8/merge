.class public final Lcom/youku/phone/R$raw;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "raw"
.end annotation


# static fields
.field public static aes:I

.field public static beep:I

.field public static keep:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15711
    const/high16 v0, 0x7f090000

    sput v0, Lcom/youku/phone/R$raw;->aes:I

    .line 15712
    const v0, 0x7f090001

    sput v0, Lcom/youku/phone/R$raw;->beep:I

    .line 15713
    const v0, 0x7f090002

    sput v0, Lcom/youku/phone/R$raw;->keep:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
