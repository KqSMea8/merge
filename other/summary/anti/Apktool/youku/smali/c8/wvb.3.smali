.class public Lc8/wvb;
.super Ljava/lang/Object;
.source "CountDownText.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private dataFormat:Ljava/lang/String;

.field private day:J

.field private dayIndex:I

.field private hour:J

.field private hourIndex:I

.field private mCountDownView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private min:J

.field private minIndex:I

.field private oneDay:I

.field private oneHour:I

.field private oneMin:I

.field private remainingTime:J

.field private reset:Z

.field private sec:J

.field private secIndex:I

.field private textColor:Ljava/lang/String;

.field private textSize:I

.field private timeColor:Ljava/lang/String;

.field private timeSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x16

    const/4 v1, -0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const v0, 0x15180

    iput v0, p0, Lc8/wvb;->oneDay:I

    .line 25
    const/16 v0, 0xe10

    iput v0, p0, Lc8/wvb;->oneHour:I

    .line 26
    const/16 v0, 0x3c

    iput v0, p0, Lc8/wvb;->oneMin:I

    .line 30
    iput v1, p0, Lc8/wvb;->dayIndex:I

    .line 31
    iput v1, p0, Lc8/wvb;->hourIndex:I

    .line 32
    iput v1, p0, Lc8/wvb;->minIndex:I

    .line 33
    iput v1, p0, Lc8/wvb;->secIndex:I

    .line 44
    iput v2, p0, Lc8/wvb;->textSize:I

    .line 47
    iput v2, p0, Lc8/wvb;->timeSize:I

    .line 52
    invoke-direct {p0, p1}, Lc8/wvb;->init(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method private computeTime()V
    .locals 6

    .prologue
    .line 229
    iget-wide v0, p0, Lc8/wvb;->remainingTime:J

    iget v2, p0, Lc8/wvb;->oneDay:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lc8/wvb;->day:J

    .line 230
    iget-wide v0, p0, Lc8/wvb;->remainingTime:J

    iget-wide v2, p0, Lc8/wvb;->day:J

    iget v4, p0, Lc8/wvb;->oneDay:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    iget v2, p0, Lc8/wvb;->oneHour:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lc8/wvb;->hour:J

    .line 231
    iget-wide v0, p0, Lc8/wvb;->remainingTime:J

    iget-wide v2, p0, Lc8/wvb;->day:J

    iget v4, p0, Lc8/wvb;->oneDay:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lc8/wvb;->hour:J

    iget v4, p0, Lc8/wvb;->oneHour:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    iget v2, p0, Lc8/wvb;->oneMin:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lc8/wvb;->min:J

    .line 232
    iget-wide v0, p0, Lc8/wvb;->remainingTime:J

    iget-wide v2, p0, Lc8/wvb;->day:J

    iget v4, p0, Lc8/wvb;->oneDay:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lc8/wvb;->hour:J

    iget v4, p0, Lc8/wvb;->oneHour:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lc8/wvb;->min:J

    iget v4, p0, Lc8/wvb;->oneMin:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    rem-long/2addr v0, v2

    iput-wide v0, p0, Lc8/wvb;->sec:J

    .line 233
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/wvb;->mHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/wvb;->mCountDownView:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lc8/wvb;->mCountDownView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 63
    iget-object v0, p0, Lc8/wvb;->mCountDownView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 64
    return-void
.end method

.method private setCountTimeText()V
    .locals 10

    .prologue
    .line 119
    iget-object v6, p0, Lc8/wvb;->dataFormat:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 226
    :goto_0
    return-void

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v6, p0, Lc8/wvb;->dataFormat:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "dataFormatClone":Ljava/lang/String;
    iget-wide v6, p0, Lc8/wvb;->day:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    iget-wide v6, p0, Lc8/wvb;->day:J

    const-wide/16 v8, 0xa

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lc8/wvb;->day:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "dayStr":Ljava/lang/String;
    :goto_1
    const-string/jumbo v6, "dd"

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 134
    iget-wide v6, p0, Lc8/wvb;->hour:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    iget-wide v6, p0, Lc8/wvb;->hour:J

    const-wide/16 v8, 0xa

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lc8/wvb;->hour:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "hourStr":Ljava/lang/String;
    :goto_2
    const-string/jumbo v6, "hh"

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-wide v6, p0, Lc8/wvb;->min:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_5

    iget-wide v6, p0, Lc8/wvb;->min:J

    const-wide/16 v8, 0xa

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    .line 145
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lc8/wvb;->min:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "minStr":Ljava/lang/String;
    :goto_3
    const-string/jumbo v6, "mm"

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 154
    iget-wide v6, p0, Lc8/wvb;->sec:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_7

    iget-wide v6, p0, Lc8/wvb;->sec:J

    const-wide/16 v8, 0xa

    cmp-long v6, v6, v8

    if-gez v6, :cond_7

    .line 155
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lc8/wvb;->sec:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, "secStr":Ljava/lang/String;
    :goto_4
    const-string/jumbo v6, "ss"

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 163
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 164
    .local v5, "styledText":Landroid/text/SpannableString;
    iget v6, p0, Lc8/wvb;->dayIndex:I

    if-ltz v6, :cond_9

    .line 165
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lc8/wvb;->getTextColor()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v7, 0x0

    iget v8, p0, Lc8/wvb;->dayIndex:I

    const/16 v9, 0x22

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 167
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget v7, p0, Lc8/wvb;->textSize:I

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget v7, p0, Lc8/wvb;->dayIndex:I

    iget v8, p0, Lc8/wvb;->dayIndex:I

    add-int/lit8 v8, v8, 0x2

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 170
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lc8/wvb;->getTimeColor()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v7, p0, Lc8/wvb;->dayIndex:I

    iget v8, p0, Lc8/wvb;->dayIndex:I

    add-int/lit8 v8, v8, 0x2

    const/16 v9, 0x22

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 172
    new-instance v6, Landroid/text/style/StyleSpan;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v7, p0, Lc8/wvb;->dayIndex:I

    iget v8, p0, Lc8/wvb;->dayIndex:I

    add-int/lit8 v8, v8, 0x2

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 174
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget v7, p0, Lc8/wvb;->timeSize:I

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget v7, p0, Lc8/wvb;->dayIndex:I

    iget v8, p0, Lc8/wvb;->dayIndex:I

    add-int/lit8 v8, v8, 0x2

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 177
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lc8/wvb;->getTextColor()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v7, p0, Lc8/wvb;->dayIndex:I

    add-int/lit8 v7, v7, 0x2

    iget v8, p0, Lc8/wvb;->hourIndex:I

    const/16 v9, 0x22

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 179
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget v7, p0, Lc8/wvb;->textSize:I

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget v7, p0, Lc8/wvb;->dayIndex:I

    add-int/lit8 v7, v7, 0x2

    iget v8, p0, Lc8/wvb;->hourIndex:I

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 188
    :goto_5
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lc8/wvb;->getTimeColor()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v7, p0, Lc8/wvb;->hourIndex:I

    iget v8, p0, Lc8/wvb;->hourIndex:I

    add-int/lit8 v8, v8, 0x2

    const/16 v9, 0x22

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 190
    new-instance v6, Landroid/text/style/StyleSpan;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v7, p0, Lc8/wvb;->hourIndex:I

    iget v8, p0, Lc8/wvb;->hourIndex:I

    add-int/lit8 v8, v8, 0x2

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 192
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget v7, p0, Lc8/wvb;->timeSize:I

    invoke-direct {v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iget v7, p0, Lc8/wvb;->hourIndex:I

    iget v8, p0, Lc8/wvb;->hourIndex:I

    add-int/lit8 v8, v8, 0x2

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 195
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lc8/wvb;->getTextColor()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v7, p0, Lc8/wvb;->hourIndex:I

    add-int/lit8 v7, v7, 0x2

    iget v8, p0, Lc8/wvb;->minIndex:I

    const/16 v9, 0x22

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 197
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget v7, p0, Lc8/wvb;->textSize:I

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget v7, p0, Lc8/wvb;->hourIndex:I

    add-int/lit8 v7, v7, 0x2

    iget v8, p0, Lc8/wvb;->minIndex:I

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 200
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lc8/wvb;->getTimeColor()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v7, p0, Lc8/wvb;->minIndex:I

    iget v8, p0, Lc8/wvb;->minIndex:I

    add-int/lit8 v8, v8, 0x2

    const/16 v9, 0x22

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 202
    new-instance v6, Landroid/text/style/StyleSpan;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v7, p0, Lc8/wvb;->minIndex:I

    iget v8, p0, Lc8/wvb;->minIndex:I

    add-int/lit8 v8, v8, 0x2

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 204
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget v7, p0, Lc8/wvb;->timeSize:I

    invoke-direct {v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iget v7, p0, Lc8/wvb;->minIndex:I

    iget v8, p0, Lc8/wvb;->minIndex:I

    add-int/lit8 v8, v8, 0x2

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 207
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lc8/wvb;->getTextColor()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v7, p0, Lc8/wvb;->minIndex:I

    add-int/lit8 v7, v7, 0x2

    iget v8, p0, Lc8/wvb;->secIndex:I

    const/16 v9, 0x22

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 209
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget v7, p0, Lc8/wvb;->textSize:I

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget v7, p0, Lc8/wvb;->minIndex:I

    add-int/lit8 v7, v7, 0x2

    iget v8, p0, Lc8/wvb;->secIndex:I

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 212
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lc8/wvb;->getTimeColor()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v7, p0, Lc8/wvb;->secIndex:I

    iget v8, p0, Lc8/wvb;->secIndex:I

    add-int/lit8 v8, v8, 0x2

    const/16 v9, 0x22

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 214
    new-instance v6, Landroid/text/style/StyleSpan;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v7, p0, Lc8/wvb;->secIndex:I

    iget v8, p0, Lc8/wvb;->secIndex:I

    add-int/lit8 v8, v8, 0x2

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 216
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget v7, p0, Lc8/wvb;->timeSize:I

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget v7, p0, Lc8/wvb;->secIndex:I

    iget v8, p0, Lc8/wvb;->secIndex:I

    add-int/lit8 v8, v8, 0x2

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 219
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lc8/wvb;->getTextColor()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v7, p0, Lc8/wvb;->secIndex:I

    add-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Lc8/wvb;->dataFormat:Ljava/lang/String;

    .line 220
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x22

    .line 219
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 222
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget v7, p0, Lc8/wvb;->textSize:I

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget v7, p0, Lc8/wvb;->secIndex:I

    add-int/lit8 v7, v7, 0x2

    .line 223
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x21

    .line 222
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 225
    iget-object v6, p0, Lc8/wvb;->mCountDownView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 126
    .end local v1    # "dayStr":Ljava/lang/String;
    .end local v2    # "hourStr":Ljava/lang/String;
    .end local v3    # "minStr":Ljava/lang/String;
    .end local v4    # "secStr":Ljava/lang/String;
    .end local v5    # "styledText":Landroid/text/SpannableString;
    :cond_1
    iget-wide v6, p0, Lc8/wvb;->day:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 127
    const-string/jumbo v1, "00"

    .restart local v1    # "dayStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 129
    .end local v1    # "dayStr":Ljava/lang/String;
    :cond_2
    iget-wide v6, p0, Lc8/wvb;->day:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "dayStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 136
    :cond_3
    iget-wide v6, p0, Lc8/wvb;->hour:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    .line 137
    const-string/jumbo v2, "00"

    .restart local v2    # "hourStr":Ljava/lang/String;
    goto/16 :goto_2

    .line 139
    .end local v2    # "hourStr":Ljava/lang/String;
    :cond_4
    iget-wide v6, p0, Lc8/wvb;->hour:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "hourStr":Ljava/lang/String;
    goto/16 :goto_2

    .line 146
    :cond_5
    iget-wide v6, p0, Lc8/wvb;->min:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_6

    .line 147
    const-string/jumbo v3, "00"

    .restart local v3    # "minStr":Ljava/lang/String;
    goto/16 :goto_3

    .line 149
    .end local v3    # "minStr":Ljava/lang/String;
    :cond_6
    iget-wide v6, p0, Lc8/wvb;->min:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "minStr":Ljava/lang/String;
    goto/16 :goto_3

    .line 156
    :cond_7
    iget-wide v6, p0, Lc8/wvb;->sec:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_8

    .line 157
    const-string/jumbo v4, "00"

    .restart local v4    # "secStr":Ljava/lang/String;
    goto/16 :goto_4

    .line 159
    .end local v4    # "secStr":Ljava/lang/String;
    :cond_8
    iget-wide v6, p0, Lc8/wvb;->sec:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "secStr":Ljava/lang/String;
    goto/16 :goto_4

    .line 182
    .restart local v5    # "styledText":Landroid/text/SpannableString;
    :cond_9
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lc8/wvb;->getTextColor()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v7, 0x0

    iget v8, p0, Lc8/wvb;->hourIndex:I

    const/16 v9, 0x22

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 184
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget v7, p0, Lc8/wvb;->textSize:I

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget v7, p0, Lc8/wvb;->hourIndex:I

    iget v8, p0, Lc8/wvb;->hourIndex:I

    add-int/lit8 v8, v8, 0x2

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_5
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 272
    iget-object v0, p0, Lc8/wvb;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lc8/wvb;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lc8/wvb;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 276
    :cond_0
    return-void
.end method

.method public getTextColor()I
    .locals 3

    .prologue
    .line 254
    iget-object v1, p0, Lc8/wvb;->textColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lc8/wvb;->textColor:Ljava/lang/String;

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lc8/wvb;->textColor:Ljava/lang/String;

    invoke-static {v1}, Lc8/Bgg;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 256
    .local v0, "color":I
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 260
    .end local v0    # "color":I
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTimeColor()I
    .locals 3

    .prologue
    .line 244
    iget-object v1, p0, Lc8/wvb;->timeColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lc8/wvb;->timeColor:Ljava/lang/String;

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lc8/wvb;->timeColor:Ljava/lang/String;

    invoke-static {v1}, Lc8/Bgg;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 246
    .local v0, "color":I
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 250
    .end local v0    # "color":I
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lc8/wvb;->mCountDownView:Landroid/widget/TextView;

    return-object v0
.end method

.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v1, 0x0

    .line 92
    iget-boolean v0, p0, Lc8/wvb;->reset:Z

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lc8/wvb;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/wvb;->reset:Z

    .line 95
    iget-object v0, p0, Lc8/wvb;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lc8/wvb;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 98
    iget-wide v0, p0, Lc8/wvb;->remainingTime:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lc8/wvb;->remainingTime:J

    .line 99
    iget-object v0, p0, Lc8/wvb;->mCountDownView:Landroid/widget/TextView;

    invoke-static {v0}, Lc8/Jgg;->onScreenArea(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    iget-object v0, p0, Lc8/wvb;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 101
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-string/jumbo v0, "countdown stop"

    invoke-static {v0}, Lc8/xgg;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_2
    invoke-direct {p0}, Lc8/wvb;->computeTime()V

    .line 107
    invoke-direct {p0}, Lc8/wvb;->setCountTimeText()V

    .line 111
    iget-wide v0, p0, Lc8/wvb;->remainingTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 114
    iget-object v0, p0, Lc8/wvb;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setCountDownTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "textColor"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lc8/wvb;->textColor:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "dateFormat"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lc8/wvb;->dataFormat:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "dd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lc8/wvb;->dayIndex:I

    .line 80
    const-string/jumbo v0, "hh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lc8/wvb;->hourIndex:I

    .line 81
    const-string/jumbo v0, "mm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lc8/wvb;->minIndex:I

    .line 82
    const-string/jumbo v0, "ss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lc8/wvb;->secIndex:I

    .line 83
    return-void
.end method

.method public setFontSize(II)V
    .locals 0
    .param p1, "complexUnitPx"    # I
    .param p2, "realPxByWidth"    # I

    .prologue
    .line 264
    iput p2, p0, Lc8/wvb;->textSize:I

    .line 265
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 4
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/wvb;->reset:Z

    .line 69
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lc8/wvb;->remainingTime:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public setTimeColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeColor"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lc8/wvb;->timeColor:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setTimeFontSize(II)V
    .locals 0
    .param p1, "complexUnitPx"    # I
    .param p2, "realPxByWidth"    # I

    .prologue
    .line 268
    iput p2, p0, Lc8/wvb;->timeSize:I

    .line 269
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/wvb;->reset:Z

    .line 87
    invoke-virtual {p0}, Lc8/wvb;->run()V

    .line 88
    return-void
.end method
