.class public Lcom/gamevil/nexus2/NexusFont;
.super Ljava/lang/Object;
.source "NexusFont.java"


# static fields
.field public static final MAX_FONT_OBJECT_COUNT:I = 0x5

.field public static g_gfaBPP:I

.field public static g_gfaBitmap:Landroid/graphics/Bitmap;

.field public static g_gfaBufCount:I

.field public static g_gfaBuffer:Ljava/nio/Buffer;

.field public static g_gfaCanvas:Landroid/graphics/Canvas;

.field public static g_gfaColorkey:I

.field public static g_gfaCurFont:I

.field public static g_gfaFamilyName1:Ljava/lang/String;

.field public static g_gfaFamilyName2:Ljava/lang/String;

.field public static g_gfaFamilyName3:Ljava/lang/String;

.field public static g_gfaFamilyName4:Ljava/lang/String;

.field public static g_gfaFamilyName5:Ljava/lang/String;

.field public static g_gfaFont1:Landroid/graphics/Typeface;

.field public static g_gfaFont2:Landroid/graphics/Typeface;

.field public static g_gfaFont3:Landroid/graphics/Typeface;

.field public static g_gfaFont4:Landroid/graphics/Typeface;

.field public static g_gfaFont5:Landroid/graphics/Typeface;

.field public static g_gfaFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field public static g_gfaIntBuf:[I

.field public static g_gfaMeasureRect:[F

.field public static g_gfaMeasureSize:[F

.field public static g_gfaPaint:Landroid/graphics/Paint;

.field public static g_gfaShortBuf:[S

.field public static g_strConv:Ljava/lang/String;

.field public static g_wordBreaker:Ljava/text/BreakIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaCanvas:Landroid/graphics/Canvas;

    .line 30
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaBitmap:Landroid/graphics/Bitmap;

    .line 31
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    .line 34
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_wordBreaker:Ljava/text/BreakIterator;

    .line 39
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont1:Landroid/graphics/Typeface;

    .line 40
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont2:Landroid/graphics/Typeface;

    .line 41
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont3:Landroid/graphics/Typeface;

    .line 42
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont4:Landroid/graphics/Typeface;

    .line 43
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont5:Landroid/graphics/Typeface;

    .line 44
    const/4 v0, -0x1

    sput v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaCurFont:I

    .line 46
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName1:Ljava/lang/String;

    .line 47
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName2:Ljava/lang/String;

    .line 48
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName3:Ljava/lang/String;

    .line 49
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName4:Ljava/lang/String;

    .line 50
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName5:Ljava/lang/String;

    .line 53
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaBuffer:Ljava/nio/Buffer;

    .line 54
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaIntBuf:[I

    .line 55
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaShortBuf:[S

    .line 56
    const/16 v0, 0x20

    sput v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaBPP:I

    .line 57
    const/4 v0, 0x0

    sput v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaBufCount:I

    .line 58
    const v0, -0xff01

    sput v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaColorkey:I

    .line 60
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureRect:[F

    .line 61
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureSize:[F

    .line 64
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GFA_CharHeight()I
    .locals 1

    .prologue
    .line 436
    sget-object v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static GFA_CharWidth()I
    .locals 7

    .prologue
    .line 419
    const-string v4, "\ubdc1"

    .line 420
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 421
    .local v2, "len":I
    new-array v5, v2, [F

    .line 422
    .local v5, "widths":[F
    sget-object v6, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    move-result v0

    .line 424
    .local v0, "actualCount":I
    const/4 v3, 0x0

    .line 425
    .local v3, "result":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 429
    float-to-int v6, v3

    return v6

    .line 427
    :cond_0
    aget v6, v5, v1

    add-float/2addr v3, v6

    .line 425
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static GFA_CreateFont(Ljava/lang/String;I)I
    .locals 4
    .param p0, "fontFamily"    # Ljava/lang/String;
    .param p1, "fontStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, "tfFontStyle":I
    packed-switch p1, :pswitch_data_0

    .line 206
    const/4 v0, 0x0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "# NEXUS-JNI # FontStyle=NORMAL"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 209
    :goto_0
    sget-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont1:Landroid/graphics/Typeface;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName1:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName1:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    :goto_1
    return v1

    .line 202
    :pswitch_0
    const/4 v0, 0x1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "# NEXUS-JNI # FontStyle=BOLD"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :pswitch_1
    const/4 v0, 0x2

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "# NEXUS-JNI # FontStyle=ITALIC"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :pswitch_2
    const/4 v0, 0x3

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "# NEXUS-JNI # FontStyle=BOLD_ITALIC"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_0
    sget-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont2:Landroid/graphics/Typeface;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName2:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName2:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    const/4 v1, 0x1

    goto :goto_1

    .line 221
    :cond_1
    sget-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont3:Landroid/graphics/Typeface;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName3:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName3:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 224
    const/4 v1, 0x2

    goto :goto_1

    .line 227
    :cond_2
    sget-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont4:Landroid/graphics/Typeface;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName4:Ljava/lang/String;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName4:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 230
    const/4 v1, 0x3

    goto :goto_1

    .line 233
    :cond_3
    sget-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont5:Landroid/graphics/Typeface;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName5:Ljava/lang/String;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName5:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 236
    const/4 v1, 0x4

    goto :goto_1

    .line 239
    :cond_4
    sget-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont1:Landroid/graphics/Typeface;

    if-nez v2, :cond_5

    .line 241
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName1:Ljava/lang/String;

    .line 243
    invoke-static {p0, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont1:Landroid/graphics/Typeface;

    goto :goto_1

    .line 247
    :cond_5
    sget-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont2:Landroid/graphics/Typeface;

    if-nez v2, :cond_6

    .line 249
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName2:Ljava/lang/String;

    .line 251
    invoke-static {p0, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont2:Landroid/graphics/Typeface;

    goto/16 :goto_1

    .line 255
    :cond_6
    sget-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont3:Landroid/graphics/Typeface;

    if-nez v2, :cond_7

    .line 257
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName3:Ljava/lang/String;

    .line 259
    invoke-static {p0, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont3:Landroid/graphics/Typeface;

    goto/16 :goto_1

    .line 263
    :cond_7
    sget-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont4:Landroid/graphics/Typeface;

    if-nez v2, :cond_8

    .line 265
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName4:Ljava/lang/String;

    .line 267
    invoke-static {p0, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont4:Landroid/graphics/Typeface;

    goto/16 :goto_1

    .line 271
    :cond_8
    sget-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont5:Landroid/graphics/Typeface;

    if-nez v2, :cond_9

    .line 273
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName5:Ljava/lang/String;

    .line 275
    invoke-static {p0, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont5:Landroid/graphics/Typeface;

    goto/16 :goto_1

    .line 282
    :cond_9
    const/4 v1, -0x1

    goto/16 :goto_1

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static GFA_DrawFont()[F
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 785
    sget-object v3, Lcom/gamevil/nexus2/NexusFont;->g_strConv:Ljava/lang/String;

    .line 808
    .local v3, "strText":Ljava/lang/String;
    sget v6, Lcom/gamevil/nexus2/NexusFont;->g_gfaBPP:I

    packed-switch v6, :pswitch_data_0

    .line 816
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v6, Lcom/gamevil/nexus2/NexusFont;->g_gfaBufCount:I

    if-lt v2, v6, :cond_0

    .line 817
    sget-object v6, Lcom/gamevil/nexus2/NexusFont;->g_gfaBitmap:Landroid/graphics/Bitmap;

    sget-object v7, Lcom/gamevil/nexus2/NexusFont;->g_gfaBuffer:Ljava/nio/Buffer;

    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 821
    .end local v2    # "i":I
    :goto_1
    const/4 v4, 0x0

    .line 822
    .local v4, "x":F
    const/4 v5, 0x0

    .line 823
    .local v5, "y":F
    sget-object v6, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureRect:[F

    aput v4, v6, v9

    .line 824
    sget-object v6, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureRect:[F

    const/4 v7, 0x1

    aput v5, v6, v7

    .line 825
    sget-object v6, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureRect:[F

    aput v8, v6, v11

    .line 826
    sget-object v6, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureRect:[F

    aput v8, v6, v12

    .line 828
    invoke-static {}, Lcom/gamevil/nexus2/NexusFont;->GFA_CharHeight()I

    move-result v6

    int-to-float v1, v6

    .line 832
    .local v1, "fH":F
    sget-object v6, Lcom/gamevil/nexus2/NexusFont;->g_gfaCanvas:Landroid/graphics/Canvas;

    add-float v7, v5, v1

    sget-object v8, Lcom/gamevil/nexus2/NexusFont;->g_gfaFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v8, v8, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    add-float/2addr v7, v10

    sget-object v8, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3, v4, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 833
    sget-object v6, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureRect:[F

    sget-object v7, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    aput v7, v6, v11

    .line 834
    sget-object v6, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureRect:[F

    add-float v7, v1, v10

    aput v7, v6, v12

    .line 837
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 838
    .local v0, "bounds":Landroid/graphics/Rect;
    sget-object v6, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v3, v9, v7, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 848
    sget-object v6, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureRect:[F

    return-object v6

    .line 811
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "fH":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    :pswitch_0
    sget-object v6, Lcom/gamevil/nexus2/NexusFont;->g_gfaCanvas:Landroid/graphics/Canvas;

    sget v7, Lcom/gamevil/nexus2/NexusFont;->g_gfaColorkey:I

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_1

    .line 816
    .restart local v2    # "i":I
    :cond_0
    sget-object v6, Lcom/gamevil/nexus2/NexusFont;->g_gfaIntBuf:[I

    aput v9, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 808
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public static GFA_DrawText(FFIF)[F
    .locals 22
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "nChars"    # I
    .param p3, "maxWidth"    # F

    .prologue
    .line 543
    sget-object v12, Lcom/gamevil/nexus2/NexusFont;->g_strConv:Ljava/lang/String;

    .line 545
    .local v12, "strText":Ljava/lang/String;
    sget v18, Lcom/gamevil/nexus2/NexusFont;->g_gfaBPP:I

    packed-switch v18, :pswitch_data_0

    .line 553
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    sget v18, Lcom/gamevil/nexus2/NexusFont;->g_gfaBufCount:I

    move/from16 v0, v18

    if-lt v8, v0, :cond_3

    .line 554
    sget-object v18, Lcom/gamevil/nexus2/NexusFont;->g_gfaBitmap:Landroid/graphics/Bitmap;

    sget-object v19, Lcom/gamevil/nexus2/NexusFont;->g_gfaBuffer:Ljava/nio/Buffer;

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 558
    .end local v8    # "i":I
    :goto_1
    sget-object v18, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureRect:[F

    const/16 v19, 0x0

    aput p0, v18, v19

    .line 559
    sget-object v18, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureRect:[F

    const/16 v19, 0x1

    aput p1, v18, v19

    .line 560
    sget-object v18, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureRect:[F

    const/16 v19, 0x2

    const/16 v20, 0x0

    aput v20, v18, v19

    .line 561
    sget-object v18, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureRect:[F

    const/16 v19, 0x3

    const/16 v20, 0x0

    aput v20, v18, v19

    .line 564
    invoke-static {}, Lcom/gamevil/nexus2/NexusFont;->GFA_CharHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v7, v0

    .line 565
    .local v7, "fH":F
    add-float p1, p1, v7

    .line 567
    move/from16 v16, p0

    .line 568
    .local v16, "xx":F
    move/from16 v17, p1

    .line 570
    .local v17, "yy":F
    const/4 v15, 0x0

    .line 572
    .local v15, "wbCnt":I
    const/4 v10, 0x0

    .line 573
    .local v10, "size":F
    move-object v14, v12

    .line 577
    .local v14, "subStr":Ljava/lang/String;
    :goto_2
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v13

    .line 578
    .local v13, "subLen":I
    sget-object v18, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, p3

    move-object/from16 v3, v20

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v5

    .line 580
    .local v5, "charCnt":I
    if-ge v5, v13, :cond_6

    .line 588
    const/4 v4, 0x0

    .line 589
    .local v4, "breakLength":I
    sget-object v18, Lcom/gamevil/nexus2/NexusFont;->g_wordBreaker:Ljava/text/BreakIterator;

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 590
    sget-object v18, Lcom/gamevil/nexus2/NexusFont;->g_wordBreaker:Ljava/text/BreakIterator;

    invoke-virtual/range {v18 .. v18}, Ljava/text/BreakIterator;->first()I

    move-result v11

    .line 591
    .local v11, "start":I
    sget-object v18, Lcom/gamevil/nexus2/NexusFont;->g_wordBreaker:Ljava/text/BreakIterator;

    invoke-virtual/range {v18 .. v18}, Ljava/text/BreakIterator;->next()I

    move-result v6

    .local v6, "end":I
    :goto_3
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_4

    .line 601
    :cond_0
    move-object v9, v14

    .line 602
    .local v9, "showStr":Ljava/lang/String;
    if-lez v4, :cond_5

    .line 604
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 605
    invoke-virtual {v14, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 613
    :goto_4
    sget-object v18, Lcom/gamevil/nexus2/NexusFont;->g_gfaCanvas:Landroid/graphics/Canvas;

    sget-object v19, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v19

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 614
    add-float v17, v17, v7

    .line 616
    sget-object v18, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    .line 617
    sget-object v18, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureRect:[F

    const/16 v19, 0x2

    aget v18, v18, v19

    cmpg-float v18, v18, v10

    if-gez v18, :cond_1

    .line 619
    sget-object v18, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureRect:[F

    const/16 v19, 0x2

    aput v10, v18, v19

    .line 622
    :cond_1
    if-gtz v4, :cond_7

    .line 644
    .end local v4    # "breakLength":I
    .end local v6    # "end":I
    .end local v9    # "showStr":Ljava/lang/String;
    .end local v11    # "start":I
    :cond_2
    :goto_5
    sget-object v18, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureRect:[F

    const/16 v19, 0x3

    sget-object v20, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureRect:[F

    const/16 v21, 0x1

    aget v20, v20, v21

    sub-float v20, v17, v20

    sget-object v21, Lcom/gamevil/nexus2/NexusFont;->g_gfaFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v20, v20, v21

    aput v20, v18, v19

    .line 646
    sget-object v18, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureRect:[F

    return-object v18

    .line 548
    .end local v5    # "charCnt":I
    .end local v7    # "fH":F
    .end local v10    # "size":F
    .end local v13    # "subLen":I
    .end local v14    # "subStr":Ljava/lang/String;
    .end local v15    # "wbCnt":I
    .end local v16    # "xx":F
    .end local v17    # "yy":F
    :pswitch_0
    sget-object v18, Lcom/gamevil/nexus2/NexusFont;->g_gfaCanvas:Landroid/graphics/Canvas;

    sget v19, Lcom/gamevil/nexus2/NexusFont;->g_gfaColorkey:I

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_1

    .line 553
    .restart local v8    # "i":I
    :cond_3
    sget-object v18, Lcom/gamevil/nexus2/NexusFont;->g_gfaIntBuf:[I

    const/16 v19, 0x0

    aput v19, v18, v8

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 593
    .end local v8    # "i":I
    .restart local v4    # "breakLength":I
    .restart local v5    # "charCnt":I
    .restart local v6    # "end":I
    .restart local v7    # "fH":F
    .restart local v10    # "size":F
    .restart local v11    # "start":I
    .restart local v13    # "subLen":I
    .restart local v14    # "subStr":Ljava/lang/String;
    .restart local v15    # "wbCnt":I
    .restart local v16    # "xx":F
    .restart local v17    # "yy":F
    :cond_4
    sub-int v18, v6, v11

    add-int v18, v18, v4

    move/from16 v0, v18

    if-gt v0, v5, :cond_0

    .line 597
    sub-int v18, v6, v11

    add-int v4, v4, v18

    .line 591
    move v11, v6

    sget-object v18, Lcom/gamevil/nexus2/NexusFont;->g_wordBreaker:Ljava/text/BreakIterator;

    invoke-virtual/range {v18 .. v18}, Ljava/text/BreakIterator;->next()I

    move-result v6

    goto/16 :goto_3

    .line 609
    .restart local v9    # "showStr":Ljava/lang/String;
    :cond_5
    const-string v14, ""

    goto :goto_4

    .line 629
    .end local v4    # "breakLength":I
    .end local v6    # "end":I
    .end local v9    # "showStr":Ljava/lang/String;
    .end local v11    # "start":I
    :cond_6
    sget-object v18, Lcom/gamevil/nexus2/NexusFont;->g_gfaCanvas:Landroid/graphics/Canvas;

    sget-object v19, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v19

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 631
    sget-object v18, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    .line 632
    sget-object v18, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureRect:[F

    const/16 v19, 0x2

    aget v18, v18, v19

    cmpg-float v18, v18, v10

    if-gez v18, :cond_2

    .line 634
    sget-object v18, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureRect:[F

    const/16 v19, 0x2

    aput v10, v18, v19

    goto :goto_5

    .line 640
    .restart local v4    # "breakLength":I
    .restart local v6    # "end":I
    .restart local v9    # "showStr":Ljava/lang/String;
    .restart local v11    # "start":I
    :cond_7
    add-int/lit8 v15, v15, 0x1

    .line 642
    goto/16 :goto_2

    .line 545
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public static GFA_GetAscent()I
    .locals 2

    .prologue
    .line 409
    sget-object v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    neg-double v0, v0

    double-to-int v0, v0

    return v0
.end method

.method public static GFA_GetColor()I
    .locals 1

    .prologue
    .line 464
    sget-object v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public static GFA_GetCurrentFont()I
    .locals 1

    .prologue
    .line 441
    sget v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaCurFont:I

    return v0
.end method

.method public static GFA_GetDescent()I
    .locals 2

    .prologue
    .line 414
    sget-object v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static GFA_GetPixels16()[S
    .locals 2

    .prologue
    .line 853
    sget-object v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaBuffer:Ljava/nio/Buffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 854
    sget-object v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaBuffer:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 856
    sget-object v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaShortBuf:[S

    return-object v0
.end method

.method public static GFA_GetPixels32()[I
    .locals 2

    .prologue
    .line 861
    sget-object v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaBuffer:Ljava/nio/Buffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 862
    sget-object v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaBuffer:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 864
    sget-object v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaIntBuf:[I

    return-object v0
.end method

.method public static GFA_GetStringLength()I
    .locals 1

    .prologue
    .line 538
    sget-object v0, Lcom/gamevil/nexus2/NexusFont;->g_strConv:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public static GFA_GetTextWidth(Ljava/lang/String;I)F
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "nChars"    # I

    .prologue
    .line 446
    new-array v3, p1, [F

    .line 447
    .local v3, "widths":[F
    sget-object v4, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5, p1, v3}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v0

    .line 448
    .local v0, "actualCount":I
    const/4 v2, 0x0

    .line 449
    .local v2, "result":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 454
    return v2

    .line 451
    :cond_0
    aget v4, v3, v1

    add-float/2addr v2, v4

    .line 449
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static GFA_GetWordwrapPosition(IF)I
    .locals 12
    .param p0, "index"    # I
    .param p1, "maxWidth"    # F

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 653
    const/4 v1, -0x1

    .line 654
    .local v1, "breakPosition":I
    sget-object v7, Lcom/gamevil/nexus2/NexusFont;->g_strConv:Ljava/lang/String;

    .line 656
    .local v7, "subStr":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    .line 657
    .local v6, "subLen":I
    sget-object v8, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v11, p1, v9}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v2

    .line 664
    .local v2, "charCnt":I
    if-ge v2, v6, :cond_3

    .line 671
    const/4 v0, 0x0

    .line 672
    .local v0, "breakLength":I
    const/4 v4, 0x0

    .line 673
    .local v4, "i":I
    sget-object v8, Lcom/gamevil/nexus2/NexusFont;->g_wordBreaker:Ljava/text/BreakIterator;

    invoke-virtual {v8, v7}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 674
    sget-object v8, Lcom/gamevil/nexus2/NexusFont;->g_wordBreaker:Ljava/text/BreakIterator;

    invoke-virtual {v8}, Ljava/text/BreakIterator;->first()I

    move-result v5

    .line 678
    .local v5, "start":I
    if-ne p0, v10, :cond_2

    .line 680
    sget-object v8, Lcom/gamevil/nexus2/NexusFont;->g_wordBreaker:Ljava/text/BreakIterator;

    invoke-virtual {v8}, Ljava/text/BreakIterator;->next()I

    move-result v3

    .local v3, "end":I
    :goto_0
    if-ne v3, v10, :cond_0

    .line 718
    .end local v0    # "breakLength":I
    .end local v3    # "end":I
    .end local v4    # "i":I
    .end local v5    # "start":I
    :goto_1
    return v4

    .line 682
    .restart local v0    # "breakLength":I
    .restart local v3    # "end":I
    .restart local v4    # "i":I
    .restart local v5    # "start":I
    :cond_0
    sub-int v8, v3, v5

    if-ne v8, v11, :cond_1

    .line 680
    :goto_2
    move v5, v3

    sget-object v8, Lcom/gamevil/nexus2/NexusFont;->g_wordBreaker:Ljava/text/BreakIterator;

    invoke-virtual {v8}, Ljava/text/BreakIterator;->next()I

    move-result v3

    goto :goto_0

    .line 687
    :cond_1
    sub-int v8, v3, v5

    add-int/2addr v0, v8

    .line 688
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 694
    .end local v3    # "end":I
    :cond_2
    sget-object v8, Lcom/gamevil/nexus2/NexusFont;->g_wordBreaker:Ljava/text/BreakIterator;

    invoke-virtual {v8}, Ljava/text/BreakIterator;->next()I

    move-result v3

    .restart local v3    # "end":I
    :goto_3
    if-ne v3, v10, :cond_4

    .end local v0    # "breakLength":I
    .end local v3    # "end":I
    .end local v4    # "i":I
    .end local v5    # "start":I
    :cond_3
    :goto_4
    move v4, v1

    .line 718
    goto :goto_1

    .line 696
    .restart local v0    # "breakLength":I
    .restart local v3    # "end":I
    .restart local v4    # "i":I
    .restart local v5    # "start":I
    :cond_4
    sub-int v8, v3, v5

    if-ne v8, v11, :cond_5

    .line 694
    :goto_5
    move v5, v3

    sget-object v8, Lcom/gamevil/nexus2/NexusFont;->g_wordBreaker:Ljava/text/BreakIterator;

    invoke-virtual {v8}, Ljava/text/BreakIterator;->next()I

    move-result v3

    goto :goto_3

    .line 703
    :cond_5
    if-ne v4, p0, :cond_6

    .line 705
    move v1, v3

    .line 706
    goto :goto_4

    .line 708
    :cond_6
    sub-int v8, v3, v5

    add-int/2addr v0, v8

    .line 711
    add-int/lit8 v4, v4, 0x1

    goto :goto_5
.end method

.method public static GFA_GetWordwrapPositionEx(F[I)I
    .locals 10
    .param p0, "maxWidth"    # F
    .param p1, "wwPositions"    # [I

    .prologue
    const/4 v9, 0x1

    .line 734
    const/4 v6, 0x0

    .line 736
    .local v6, "wwCount":I
    sget-object v5, Lcom/gamevil/nexus2/NexusFont;->g_strConv:Ljava/lang/String;

    .line 740
    .local v5, "subStr":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 741
    .local v4, "subLen":I
    sget-object v7, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v9, p0, v8}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v1

    .line 748
    .local v1, "charCnt":I
    if-ge v1, v4, :cond_0

    .line 755
    const/4 v0, 0x0

    .line 756
    .local v0, "breakLength":I
    sget-object v7, Lcom/gamevil/nexus2/NexusFont;->g_wordBreaker:Ljava/text/BreakIterator;

    invoke-virtual {v7, v5}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 757
    sget-object v7, Lcom/gamevil/nexus2/NexusFont;->g_wordBreaker:Ljava/text/BreakIterator;

    invoke-virtual {v7}, Ljava/text/BreakIterator;->first()I

    move-result v3

    .line 759
    .local v3, "start":I
    sget-object v7, Lcom/gamevil/nexus2/NexusFont;->g_wordBreaker:Ljava/text/BreakIterator;

    invoke-virtual {v7}, Ljava/text/BreakIterator;->next()I

    move-result v2

    .local v2, "end":I
    :goto_0
    const/4 v7, -0x1

    if-ne v2, v7, :cond_1

    .line 780
    .end local v0    # "breakLength":I
    .end local v2    # "end":I
    .end local v3    # "start":I
    :cond_0
    return v6

    .line 763
    .restart local v0    # "breakLength":I
    .restart local v2    # "end":I
    .restart local v3    # "start":I
    :cond_1
    sub-int v7, v2, v3

    if-ne v7, v9, :cond_2

    .line 759
    :goto_1
    move v3, v2

    sget-object v7, Lcom/gamevil/nexus2/NexusFont;->g_wordBreaker:Ljava/text/BreakIterator;

    invoke-virtual {v7}, Ljava/text/BreakIterator;->next()I

    move-result v2

    goto :goto_0

    .line 769
    :cond_2
    if-eqz p1, :cond_3

    array-length v7, p1

    if-ge v6, v7, :cond_3

    aput v2, p1, v6

    .line 771
    :cond_3
    sub-int v7, v2, v3

    add-int/2addr v0, v7

    .line 773
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public static GFA_Init(IIIIZI)Z
    .locals 4
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "bpp"    # I
    .param p3, "colorkey"    # I
    .param p4, "bAntiAlias"    # Z
    .param p5, "locale"    # I

    .prologue
    const/4 v3, 0x1

    .line 71
    invoke-static {}, Lcom/gamevil/nexus2/NexusFont;->GFA_IsInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    :goto_0
    return v3

    .line 74
    :cond_0
    mul-int v1, p0, p1

    sput v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaBufCount:I

    .line 76
    packed-switch p2, :pswitch_data_0

    .line 93
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaBitmap:Landroid/graphics/Bitmap;

    .line 96
    sget v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaBufCount:I

    new-array v1, v1, [I

    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaIntBuf:[I

    .line 97
    sget-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaIntBuf:[I

    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v1

    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaBuffer:Ljava/nio/Buffer;

    .line 102
    :goto_1
    sput p2, Lcom/gamevil/nexus2/NexusFont;->g_gfaBPP:I

    .line 103
    sput p3, Lcom/gamevil/nexus2/NexusFont;->g_gfaColorkey:I

    .line 106
    new-instance v1, Landroid/graphics/Canvas;

    sget-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaCanvas:Landroid/graphics/Canvas;

    .line 110
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    .line 111
    sget-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 112
    sget-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    sget-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 114
    sget-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 115
    sget-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    sget-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 121
    const/4 v1, -0x1

    sput v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaCurFont:I

    .line 123
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    .line 124
    .local v0, "loc":Ljava/util/Locale;
    packed-switch p5, :pswitch_data_1

    .line 127
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    .line 132
    :goto_2
    invoke-static {v0}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v1

    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_wordBreaker:Ljava/text/BreakIterator;

    .line 134
    const/4 v1, 0x4

    new-array v1, v1, [F

    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureRect:[F

    .line 135
    const/4 v1, 0x2

    new-array v1, v1, [F

    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureSize:[F

    goto :goto_0

    .line 81
    .end local v0    # "loc":Ljava/util/Locale;
    :pswitch_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaBitmap:Landroid/graphics/Bitmap;

    .line 84
    sget v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaBufCount:I

    new-array v1, v1, [S

    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaShortBuf:[S

    .line 85
    sget-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaShortBuf:[S

    invoke-static {v1}, Ljava/nio/ShortBuffer;->wrap([S)Ljava/nio/ShortBuffer;

    move-result-object v1

    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaBuffer:Ljava/nio/Buffer;

    goto :goto_1

    .line 128
    .restart local v0    # "loc":Ljava/util/Locale;
    :pswitch_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    goto :goto_2

    .line 129
    :pswitch_2
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    goto :goto_2

    .line 130
    :pswitch_3
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    goto :goto_2

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch

    .line 124
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static GFA_IsInitialized()Z
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static GFA_MeasureText(IF)[F
    .locals 16
    .param p0, "nChars"    # I
    .param p1, "maxWidth"    # F

    .prologue
    .line 869
    sget-object v8, Lcom/gamevil/nexus2/NexusFont;->g_strConv:Ljava/lang/String;

    .line 871
    .local v8, "strText":Ljava/lang/String;
    sget-object v13, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureSize:[F

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 872
    sget-object v13, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureSize:[F

    const/4 v14, 0x1

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 875
    invoke-static {}, Lcom/gamevil/nexus2/NexusFont;->GFA_CharHeight()I

    move-result v13

    int-to-float v4, v13

    .line 876
    .local v4, "fH":F
    move v12, v4

    .line 878
    .local v12, "yy":F
    const/4 v11, 0x0

    .line 880
    .local v11, "wbCnt":I
    const/4 v6, 0x0

    .line 881
    .local v6, "size":F
    move-object v10, v8

    .line 884
    .local v10, "subStr":Ljava/lang/String;
    :goto_0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    .line 885
    .local v9, "subLen":I
    sget-object v13, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    const/4 v14, 0x1

    const/4 v15, 0x0

    move/from16 v0, p1

    invoke-virtual {v13, v10, v14, v0, v15}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v2

    .line 887
    .local v2, "charCnt":I
    if-ge v2, v9, :cond_5

    .line 895
    const/4 v1, 0x0

    .line 896
    .local v1, "breakLength":I
    sget-object v13, Lcom/gamevil/nexus2/NexusFont;->g_wordBreaker:Ljava/text/BreakIterator;

    invoke-virtual {v13, v10}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 897
    sget-object v13, Lcom/gamevil/nexus2/NexusFont;->g_wordBreaker:Ljava/text/BreakIterator;

    invoke-virtual {v13}, Ljava/text/BreakIterator;->first()I

    move-result v7

    .line 898
    .local v7, "start":I
    sget-object v13, Lcom/gamevil/nexus2/NexusFont;->g_wordBreaker:Ljava/text/BreakIterator;

    invoke-virtual {v13}, Ljava/text/BreakIterator;->next()I

    move-result v3

    .local v3, "end":I
    :goto_1
    const/4 v13, -0x1

    if-ne v3, v13, :cond_3

    .line 907
    :cond_0
    move-object v5, v10

    .line 908
    .local v5, "showStr":Ljava/lang/String;
    if-lez v1, :cond_4

    .line 910
    const/4 v13, 0x0

    invoke-virtual {v10, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 911
    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 920
    :goto_2
    add-float/2addr v12, v4

    .line 922
    sget-object v13, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 923
    sget-object v13, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureSize:[F

    const/4 v14, 0x0

    aget v13, v13, v14

    cmpg-float v13, v13, v6

    if-gez v13, :cond_1

    .line 925
    sget-object v13, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureSize:[F

    const/4 v14, 0x0

    aput v6, v13, v14

    .line 928
    :cond_1
    if-gtz v1, :cond_6

    .line 947
    .end local v1    # "breakLength":I
    .end local v3    # "end":I
    .end local v5    # "showStr":Ljava/lang/String;
    .end local v7    # "start":I
    :cond_2
    :goto_3
    sget-object v13, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureSize:[F

    const/4 v14, 0x1

    sget-object v15, Lcom/gamevil/nexus2/NexusFont;->g_gfaFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v15, v15, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v15, v15

    add-float/2addr v15, v12

    aput v15, v13, v14

    .line 949
    sget-object v13, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureSize:[F

    return-object v13

    .line 900
    .restart local v1    # "breakLength":I
    .restart local v3    # "end":I
    .restart local v7    # "start":I
    :cond_3
    sub-int v13, v3, v7

    add-int/2addr v13, v1

    if-gt v13, v2, :cond_0

    .line 904
    sub-int v13, v3, v7

    add-int/2addr v1, v13

    .line 898
    move v7, v3

    sget-object v13, Lcom/gamevil/nexus2/NexusFont;->g_wordBreaker:Ljava/text/BreakIterator;

    invoke-virtual {v13}, Ljava/text/BreakIterator;->next()I

    move-result v3

    goto :goto_1

    .line 915
    .restart local v5    # "showStr":Ljava/lang/String;
    :cond_4
    const-string v10, ""

    goto :goto_2

    .line 935
    .end local v1    # "breakLength":I
    .end local v3    # "end":I
    .end local v5    # "showStr":Ljava/lang/String;
    .end local v7    # "start":I
    :cond_5
    sget-object v13, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 936
    sget-object v13, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureSize:[F

    const/4 v14, 0x0

    aget v13, v13, v14

    cmpg-float v13, v13, v6

    if-gez v13, :cond_2

    .line 938
    sget-object v13, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureSize:[F

    const/4 v14, 0x0

    aput v6, v13, v14

    goto :goto_3

    .line 943
    .restart local v1    # "breakLength":I
    .restart local v3    # "end":I
    .restart local v5    # "showStr":Ljava/lang/String;
    .restart local v7    # "start":I
    :cond_6
    add-int/lit8 v11, v11, 0x1

    .line 945
    goto :goto_0
.end method

.method public static GFA_Release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaCanvas:Landroid/graphics/Canvas;

    .line 164
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    .line 165
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaBitmap:Landroid/graphics/Bitmap;

    .line 167
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont1:Landroid/graphics/Typeface;

    .line 168
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont2:Landroid/graphics/Typeface;

    .line 169
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont3:Landroid/graphics/Typeface;

    .line 170
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont4:Landroid/graphics/Typeface;

    .line 171
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont5:Landroid/graphics/Typeface;

    .line 173
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName1:Ljava/lang/String;

    .line 174
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName2:Ljava/lang/String;

    .line 175
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName3:Ljava/lang/String;

    .line 176
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName4:Ljava/lang/String;

    .line 177
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName5:Ljava/lang/String;

    .line 179
    const/4 v0, -0x1

    sput v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaCurFont:I

    .line 181
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_wordBreaker:Ljava/text/BreakIterator;

    .line 183
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaBuffer:Ljava/nio/Buffer;

    .line 184
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaShortBuf:[S

    .line 185
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaIntBuf:[I

    .line 187
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureRect:[F

    .line 188
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaMeasureSize:[F

    .line 191
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 192
    return-void
.end method

.method public static GFA_ReleaseFont(I)V
    .locals 2
    .param p0, "fontId"    # I

    .prologue
    const/4 v1, 0x0

    .line 358
    packed-switch p0, :pswitch_data_0

    .line 397
    :cond_0
    :goto_0
    sget v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaCurFont:I

    if-ne v0, p0, :cond_1

    .line 399
    const/4 v0, -0x1

    sput v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaCurFont:I

    .line 402
    :cond_1
    sget-object v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 404
    sget-object v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    sput-object v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 405
    return-void

    .line 361
    :pswitch_0
    sget-object v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont1:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 363
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont1:Landroid/graphics/Typeface;

    .line 364
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName1:Ljava/lang/String;

    goto :goto_0

    .line 368
    :pswitch_1
    sget-object v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont2:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 370
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont2:Landroid/graphics/Typeface;

    .line 371
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName2:Ljava/lang/String;

    goto :goto_0

    .line 375
    :pswitch_2
    sget-object v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont3:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 377
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont3:Landroid/graphics/Typeface;

    .line 378
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName3:Ljava/lang/String;

    goto :goto_0

    .line 382
    :pswitch_3
    sget-object v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont4:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 384
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont4:Landroid/graphics/Typeface;

    .line 385
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName4:Ljava/lang/String;

    goto :goto_0

    .line 389
    :pswitch_4
    sget-object v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont5:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 391
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont5:Landroid/graphics/Typeface;

    .line 392
    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFamilyName5:Ljava/lang/String;

    goto :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static GFA_SetAntiAlias(Z)V
    .locals 1
    .param p0, "bOn"    # Z

    .prologue
    .line 488
    sget-object v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 489
    return-void
.end method

.method public static GFA_SetColor(I)V
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 459
    sget-object v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 460
    return-void
.end method

.method public static GFA_SetFont(I)I
    .locals 3
    .param p0, "fontId"    # I

    .prologue
    .line 289
    sget v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaCurFont:I

    .line 293
    .local v0, "oldFontId":I
    sget v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaCurFont:I

    if-ne p0, v1, :cond_0

    .line 351
    .end local p0    # "fontId":I
    :goto_0
    return p0

    .line 299
    .restart local p0    # "fontId":I
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 344
    :cond_1
    :goto_1
    sget-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move p0, v0

    .line 351
    goto :goto_0

    .line 302
    :pswitch_0
    sget-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont1:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    .line 305
    sget-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont1:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 306
    const/4 v1, 0x0

    sput v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaCurFont:I

    goto :goto_1

    .line 310
    :pswitch_1
    sget-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont2:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    .line 313
    sget-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont2:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 314
    const/4 v1, 0x1

    sput v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaCurFont:I

    goto :goto_1

    .line 318
    :pswitch_2
    sget-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont3:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    .line 321
    sget-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont3:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 322
    const/4 v1, 0x2

    sput v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaCurFont:I

    goto :goto_1

    .line 326
    :pswitch_3
    sget-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont4:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    .line 329
    sget-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont4:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 330
    const/4 v1, 0x3

    sput v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaCurFont:I

    goto :goto_1

    .line 334
    :pswitch_4
    sget-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont5:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    .line 337
    sget-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/gamevil/nexus2/NexusFont;->g_gfaFont5:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 338
    const/4 v1, 0x4

    sput v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaCurFont:I

    goto :goto_1

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static GFA_SetLocale(I)V
    .locals 2
    .param p0, "locale"    # I

    .prologue
    .line 142
    const/4 v1, 0x0

    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_wordBreaker:Ljava/text/BreakIterator;

    .line 144
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    .line 145
    .local v0, "loc":Ljava/util/Locale;
    packed-switch p0, :pswitch_data_0

    .line 148
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    .line 153
    :goto_0
    invoke-static {v0}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v1

    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_wordBreaker:Ljava/text/BreakIterator;

    .line 154
    return-void

    .line 149
    :pswitch_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    goto :goto_0

    .line 150
    :pswitch_1
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    goto :goto_0

    .line 151
    :pswitch_2
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static GFA_SetString(Ljava/lang/String;I)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "nChars"    # I

    .prologue
    .line 523
    if-lez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 526
    :cond_0
    sput-object p0, Lcom/gamevil/nexus2/NexusFont;->g_strConv:Ljava/lang/String;

    .line 534
    :goto_0
    return-void

    .line 531
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamevil/nexus2/NexusFont;->g_strConv:Ljava/lang/String;

    goto :goto_0
.end method

.method public static GFA_SetStringFromKSC5601([B)V
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 495
    const/4 v1, 0x0

    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_strConv:Ljava/lang/String;

    .line 499
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "KSC5601"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_strConv:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :goto_0
    return-void

    .line 501
    :catch_0
    move-exception v0

    .line 503
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static GFA_SetStringFromUnicode([B)V
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 509
    const/4 v1, 0x0

    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_strConv:Ljava/lang/String;

    .line 513
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-16LE"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sput-object v1, Lcom/gamevil/nexus2/NexusFont;->g_strConv:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :goto_0
    return-void

    .line 515
    :catch_0
    move-exception v0

    .line 517
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static GFA_SetTextAlign(I)V
    .locals 2
    .param p0, "align"    # I

    .prologue
    .line 469
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 470
    .local v0, "_align":Landroid/graphics/Paint$Align;
    packed-switch p0, :pswitch_data_0

    .line 474
    :pswitch_0
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 478
    :goto_0
    sget-object v1, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 479
    return-void

    .line 472
    :pswitch_1
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    goto :goto_0

    .line 475
    :pswitch_2
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto :goto_0

    .line 470
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static GFA_SetTextSize(F)V
    .locals 1
    .param p0, "size"    # F

    .prologue
    .line 483
    sget-object v0, Lcom/gamevil/nexus2/NexusFont;->g_gfaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 484
    return-void
.end method

.method public static native GFA_getNativeByteBufferObject()[B
.end method

.method public static native GFA_getNativeByteBufferSize()I
.end method
