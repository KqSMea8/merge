.class public final Lcom/youku/phone/R$array;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "array"
.end annotation


# static fields
.field public static country_codes:I

.field public static other_site_ids:I

.field public static other_site_names:I

.field public static other_site_resids:I

.field public static payment_names:I

.field public static payment_resids:I

.field public static player_payment_names:I

.field public static player_payment_resids:I

.field public static sceneIds:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    const/high16 v0, 0x7f100000

    sput v0, Lcom/youku/phone/R$array;->country_codes:I

    .line 146
    const v0, 0x7f100001

    sput v0, Lcom/youku/phone/R$array;->other_site_ids:I

    .line 147
    const v0, 0x7f100002

    sput v0, Lcom/youku/phone/R$array;->other_site_names:I

    .line 148
    const v0, 0x7f100003

    sput v0, Lcom/youku/phone/R$array;->other_site_resids:I

    .line 149
    const v0, 0x7f100004

    sput v0, Lcom/youku/phone/R$array;->payment_names:I

    .line 150
    const v0, 0x7f100005

    sput v0, Lcom/youku/phone/R$array;->payment_resids:I

    .line 151
    const v0, 0x7f100006

    sput v0, Lcom/youku/phone/R$array;->player_payment_names:I

    .line 152
    const v0, 0x7f100007

    sput v0, Lcom/youku/phone/R$array;->player_payment_resids:I

    .line 153
    const v0, 0x7f100008

    sput v0, Lcom/youku/phone/R$array;->sceneIds:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
