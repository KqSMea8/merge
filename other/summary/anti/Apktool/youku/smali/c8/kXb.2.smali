.class public Lc8/kXb;
.super Ljava/lang/Object;
.source "DebugUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addInfo(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "keySpan"    # Ljava/lang/Object;
    .param p4, "valueSpan"    # Ljava/lang/Object;

    .prologue
    .line 19
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 20
    .local v1, "mark":I
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 21
    if-nez p3, :cond_0

    new-instance p3, Landroid/text/style/ForegroundColorSpan;

    .end local p3    # "keySpan":Ljava/lang/Object;
    const v2, -0x333334

    invoke-direct {p3, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 22
    .restart local p3    # "keySpan":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x11

    invoke-virtual {p0, p3, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 24
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 25
    if-nez p2, :cond_1

    const-string/jumbo p2, "Null"

    .line 26
    :cond_1
    invoke-virtual {p0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 27
    if-nez p2, :cond_3

    const/high16 v0, -0x10000

    .line 28
    .local v0, "color":I
    :goto_0
    if-nez p4, :cond_2

    new-instance p4, Landroid/text/style/ForegroundColorSpan;

    .end local p4    # "valueSpan":Ljava/lang/Object;
    invoke-direct {p4, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 29
    .restart local p4    # "valueSpan":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {p0, p4, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 30
    return-void

    .line 27
    .end local v0    # "color":I
    :cond_3
    const v0, -0x777778

    goto :goto_0
.end method
