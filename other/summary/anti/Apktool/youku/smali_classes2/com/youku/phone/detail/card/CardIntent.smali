.class public Lcom/youku/phone/detail/card/CardIntent;
.super Landroid/content/Intent;
.source "CardIntent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public onCallBack(Lcom/youku/phone/detail/card/CardIntent;)V
    .locals 0
    .param p1, "cardIntent"    # Lcom/youku/phone/detail/card/CardIntent;

    .prologue
    .line 21
    return-void
.end method
