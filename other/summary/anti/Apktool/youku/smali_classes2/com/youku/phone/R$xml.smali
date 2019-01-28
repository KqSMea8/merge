.class public final Lcom/youku/phone/R$xml;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "xml"
.end annotation


# static fields
.field public static authenticator:I

.field public static file_paths:I

.field public static searchable:I

.field public static syncadapter:I

.field public static update_sdk_provider_paths:I

.field public static yk_file_paths:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17860
    const/high16 v0, 0x7f080000

    sput v0, Lcom/youku/phone/R$xml;->authenticator:I

    .line 17861
    const v0, 0x7f080001

    sput v0, Lcom/youku/phone/R$xml;->file_paths:I

    .line 17862
    const v0, 0x7f080002

    sput v0, Lcom/youku/phone/R$xml;->searchable:I

    .line 17863
    const v0, 0x7f080003

    sput v0, Lcom/youku/phone/R$xml;->syncadapter:I

    .line 17864
    const v0, 0x7f080004

    sput v0, Lcom/youku/phone/R$xml;->update_sdk_provider_paths:I

    .line 17865
    const v0, 0x7f080005

    sput v0, Lcom/youku/phone/R$xml;->yk_file_paths:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
